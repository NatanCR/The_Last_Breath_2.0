//
//  Inventario.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 24/06/22.
//

import Foundation

struct Item: Equatable {
    var nome: String
    var descricao: String
    var toString: String {
        return "Nome: \(nome)\nDescrição: \(descricao)"
    }
    
    func use() {
        
    }
}

struct ItemStack {
    var item: Item
    var quantidade: Int
    var toString: String {
        return "\(item.toString)\nQuantidade: \(quantidade)"
    }
    
    mutating func use() {
        item.use()
        remove()
    }
    
    mutating func add() {
        quantidade += 1
    }
    
    mutating func remove() {
        quantidade -= 1
    }
    
    mutating func clear() {
        quantidade = 0
    }
}

struct Inventory {
    var items: [ItemStack] = []
    
    mutating func addItem(item: Item, qtd: Int) {
        
        guard let index = getIndex(item) else {
            create(item: item, qtd: qtd)
            return
        }
        
        items[index].add()
    }
    
    func show() {
        let line = "–––––––––––––––––––––––––––––––––––––––––––"
        var str: String = "«« INVENTÁRIO »»\n\n\(line)\n"
        
        for i in 0..<items.count {
            str += "\n[\(i + 1)] \(items[i].toString)\n\(line)"
        }
        
        str += "\n[0] Voltar"
        
        print(str)
    }
    
    mutating func use() {
        
        show()
        
        var validChoice = false
        
        while !validChoice {
            print("\nEscolha: ", terminator: "")
            let input = readLine()
            if let choice = Int(input!) {
                switch choice {
                case 0:
                    validChoice = true
                case 1...items.count:
                    items[choice - 1].use()
                    validChoice = true
                default:
                    print("\nOpção inválida.")
                }
            } else {
                print("\nErro: Opção inválida.")
            }
            
        }
    }
    
    private mutating func create(item: Item, qtd: Int) {
        items.append(.init(item: item, quantidade: qtd))
    }
    
    private func getIndex(_ item: Item) -> Int? {
        
        var index: Int? = nil
        var cont = 0
        
        items.forEach( { stack in
            cont += 1
            if stack.item == item {
                index = cont
                return
            }
        })
        
        return index
    }
}

public struct Inventario {
    var tituloObjeto: String
    var descricaoObjeto: String
    var quantidade: Int
    
    init(_ tituloObjeto: String,_ descricaoObjeto: String,_ quantidade: Int) {
        self.tituloObjeto = tituloObjeto
        self.descricaoObjeto = descricaoObjeto
        self.quantidade = quantidade
    }
}

public struct FuncoesInventario {
    var meuInventario: [Inventario] = []
    
    public func verificaItem(nome: String) -> Inventario? {
        for i in meuInventario {
            if nome == i.tituloObjeto {
                return i
            }
        }
        return nil
    }
    
    public mutating func salvarInventario(tituloObjeto: String, descricaoObjeto: String, quantidade: Int) {
        meuInventario.append(Inventario.init(tituloObjeto, descricaoObjeto, quantidade))
    }
    
    public func mostrarInventario() {
        print("\n<<< INVENTÁRIO >>>")
        for i in meuInventario {
            print("\nNome: \(i.tituloObjeto)\nDescrição: \(i.descricaoObjeto)\nQuantidade: \(i.quantidade)")
            print("|------------------------------------------------------------------------|")
        }
        
    }
    
//   public func removeQuantidadeItem(valor: Int, nomeItem: String) {
//        for i in meuInventario {
//            if nomeItem == i.tituloObjeto {
//                i.quantidade -= valor
//            }
//        }
//    }
    
    public mutating func adicionarObjetos() {
        meuInventario.append(Inventario.init("Espada do Dragão", "Espada forjada com pele de dragão", 1))
        meuInventario.append(Inventario.init("Feitiço Retardatário", "Feitiço criado pelo Doodou para atrasar os movimentos do inimigo", 4))
        meuInventario.append(Inventario.init("Mapa", "Mapa do reino", 1))
    }
}
