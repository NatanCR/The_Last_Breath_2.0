//
//  Inventario.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 24/06/22.
//

import Foundation

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
    
    public func mostrarInventario(vetor: [Inventario]) -> [Inventario] {
        print("\n<<< INVENTÁRIO >>>")
        //        for (index, value) in meuInventario.enumerated() {
        //            print("Item \(index + 1): \(value)")
        //        }
        for i in meuInventario {
            print("\nNome: \(i.tituloObjeto)\nDescrição: \(i.descricaoObjeto)\nQuantidade: \(i.quantidade)")
            print("|------------------------------------------------------------------------|")
        }
        return vetor
    }
    
    public mutating func adicionarObjetos() {
        meuInventario.append(Inventario.init("Espada do Dragão", "Espada forjada com pele de dragão", 1))
        meuInventario.append(Inventario.init("Feitiço Retardatário", "Feitiço criado pelo Doodou para atrasar os movimentos do inimigo", 4))
        meuInventario.append(Inventario.init("Mapa", "Mapa do reino", 1))
    }
}
