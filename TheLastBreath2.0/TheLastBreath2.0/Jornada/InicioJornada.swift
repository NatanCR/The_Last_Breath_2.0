//
//  InicioJornada.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class InicioJornada {
    
    func inicioJornada() {
        usaConsole.printaEscrita("\(conversaInicioJornadaTxt)")
        
        if jogador.inventario.verificaItem(nome: "Mapa") != nil {
            print("")
        } else {
            jogador.inventario.adicionarObjetos()
        }
        
        jogador.inventario.mostrarInventario()
        
        usaConsole.printaEscrita("\(avisosDoodouTxt)")
        
        var perguntaHipogrifo: String
        repeat {
            print("""

[1] O que é um Hipogrifo? ou [2] Continuar andando

""")
            perguntaHipogrifo = readLine()!
            if perguntaHipogrifo == "1" {
                usaConsole.printaEscrita("\(hipogrifoTxt)")
            }
            
        } while perguntaHipogrifo != "1" && perguntaHipogrifo != "2"
        
        
        
        
        usaConsole.printaEscrita("\(encontraHipogrifoTxt)")
        
        var escolha2: String
        var retornoEspada = false
        repeat{
            print("[1] Ajoelhar-se e fazer a reverência ou [2] Pegar a espada")
            escolha2 = readLine()!
            
            if escolha2 == "1" {
                fazerReverencia()
            } else if escolha2 == "2"{
                retornoEspada = pegarEspada()
            } else {
                print("Digite uma opção válida.")
            }
        } while escolha2 != "1" && escolha2 != "2"
        
        if retornoEspada{
            return
        }
        
        print(" ")
        
        usaConsole.printaEscrita("""

- Doodou: \(nomeJogador) o Hipogrifo está mais calmo? Acho que tive uma ideia!

- \(nomeJogador): Acho que sei o que está pensando...

""")
        var escolhaHipogrifo: String
        
        repeat{
            print("- \(nomeJogador): [1] Usar o Hipogrifo para ir até o topo da montanha.")
            escolhaHipogrifo = readLine()!
        } while escolhaHipogrifo != "1"
        
        usaConsole.printaEscrita("\(subindoMontanhaTxt)")
        
        let escolhaCastelo = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Vamos garoto, deixe a gente na frente do castelo! ou [2] Melhor descermos mais afastados, não sabemos o que nos espera.", opcao1: """

- \(nomeJogador): Vamos garoto, deixe a gente na frente do castelo!

- Doodou: Grannus vai ver a gente se formos bem na frente do castelo não acha? Está querendo morrer hoje? Porque eu não!!
""", opcao2: """

- \(nomeJogador): Melhor descermos mais afastados, não sabemos o que nos espera.

- Doodou: Você tem razão precisamos descer mais afastados e voltar andando
""")
        
        usaConsole.printaEscrita("""
\(escolhaCastelo)

- \(nomeJogador): Ótimo garoto, agora você está livre! Obrigado por nos ajudar!


Após uma pequena viagem até encontrarem um Hipogrifo \(nomeJogador) e seu duende Doodou chegam ao topo da montanha onde encontraram o Grannus, feiticeiro que amaldiçoou Bryana.


""")
        
        let finalJornada = FinalJornada()
        finalJornada.finalJornada()
    }
    
    func pegarEspada() -> Bool {
        var retornoBatalha: Bool
        
        usaConsole.printaEscrita("\nVocê irritou o Hipogrifo, prepare-se para lutar!\n")
        
        jogador.inventario.mostrarInventario()
        
        usaConsole.printaEscrita("""


- Hiprogrífo: GRRRUUUUUUWW!!!!!!

- \(nomeJogador): Doooodouuu, ELE TÁ VINDO PRA CIMA DE MIM!!!!

""")
        let combate02 = Combate02()
        retornoBatalha = combate02.combate02()
        
        return retornoBatalha 
    }
    
    func fazerReverencia() {
        usaConsole.printaEscrita("\(salvarHipogrifoTxt)")
        
        var segredoCorrente: String
        repeat {
            print("\nVocê precisa lembrar quem é o Mago poderoso que você está buscando para poder quebrar a corrente. Então se lembra quem está procurando?")
            print("\n[1] Grannus\n[2] Centrio\n[3] Solveig")
            segredoCorrente = readLine()!
        } while segredoCorrente != "1"
        
        usaConsole.printaEscrita("\(libertouHipogrifoTxt)")
    }
    
}
