//
//  BatalhaFinal1.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 30/06/22.
//

import Foundation

class BatalhaFinal1 {
    
    public func batalhaFinal1() {
        let grannus = Personagem(nome: "Grannus", vida: 100, nomeAtaque01: "REVIDUS - (revida os ataques do oponente)")
        
        usaConsole.printaEscrita("\n- \(nomeJogador): Certo! AAAARRRGG TOME ISSO!!!!!!!\n")
        
        grannus.vida -= jogador.ataque(dano: 35, atacar: true)
        print("Vida Grannus: \(grannus.vida)")
        
        print("\n- Doodou: Muito bem \(nomeJogador)!! Use sua espada agora!!!!\n")
        
        let escolhaAtaque = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Atacar com a espada. ou [2] Esperar o ataque de Grannus.", opcao1: "- \(nomeJogador): AAAAHHH SEGURA ESSA!!!!!!!", opcao2: "- \(nomeJogador): Espera aí, cadê ele?")
        
        usaConsole.printaEscrita("""
\(escolhaAtaque)

- \(nomeJogador): Não consigo ver nada com essa fumaça!!!!!

- Doodou: DROGA!!! \(nomeJogador) em cima de você!!!!

- Grannus: CRUENTOS PASSOS

""")
        
        jogador.vida -= grannus.ataque(dano: 30, atacar: true)
        
        usaConsole.printaEscrita("\(primeiroDefesaTxt)")
        
        let fala1 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Você devia se arrepender enquanto pode! ou [2] Eu não vou errar dessa vez!", opcao1: "- \(nomeJogador): Você devia se arrepender enquanto pode!", opcao2: "- \(nomeJogador): Eu não vou errar dessa vez!")
        
        usaConsole.printaEscrita("\(fala1)\n- Grannus: AAAAHHHH TIRA ISSO DE MIM!! EU NÃO AGUENTO MAIS!!!!!\n")
        
        grannus.vida -= jogador.ataque(dano: 15, atacar: true)
        
        usaConsole.printaEscrita("Vida Grannus: \(grannus.vida)\n\(enfeiticadoTxt)")
        
        let fala2 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] AAAAH EU VOU ACABAR COM A VIDA DELE!!!!!! ou [2] Como vamos ajudá-lo?", opcao1: """

- Doodou: Se você matar ele, pode ser que nunca descobriremos a cura para sua irmã!

- \(nomeJogador): Você tem razão, precisamos dele vivo! Você tem algum plano?
""", opcao2: "")
        
        usaConsole.printaEscrita("\(fala2)\n\(seAfasteTxt)")
        
        var escolhaErrada: String
        
        repeat {
            print("- \(nomeJogador): [1] Distrair Grannus ou [2] Atacar Grannus")
            escolhaErrada = readLine()!
            if escolhaErrada == "1" {
                print("")
            } else if escolhaErrada == "2" {
                grannus.vida -= jogador.ataque(dano: 15, atacar: true)
                
                usaConsole.printaEscrita("\nVida Grannus: \(grannus.vida)\n\(gameOverOpicionalTxt)")
            } else {
                print("Digite uma opção válida.")
            }
        } while escolhaErrada != "1" && escolhaErrada != "2"
        
        usaConsole.printaEscrita("\(corpusRetireTxt)\n")
        
        grannus.vida = 50
        grannus.vida -= jogador.ataque(dano: 40, atacar: true)
        
        usaConsole.printaEscrita("""
Vida Grannus: \(grannus.vida)

- Doodou: Muito bem \(nomeJogador)! Agora, segure ele até o feitiço fazer efeito!

""")
        let fala3 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Doodou, isso vai dar certo? ou [2] Ele pode morrer?", opcao1: "- \(nomeJogador): Doodou, isso vai dar certo?", opcao2: "- \(nomeJogador): Ele pode morrer?")
        
        usaConsole.printaEscrita("\(fala3)\n\(grannusAcordaTxt)\n")
        
        let usaConsole = Console()
        let fala4 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Vamos te contar tudo que precisa saber! ou [2] Você realmente não se lembra de nada?", opcao1: "\n- \(nomeJogador): Vamos te contar tudo que precisa saber!", opcao2: "\n- \(nomeJogador): Você realmente não se lembra de nada?")
        
        usaConsole.printaEscrita("\(fala4)\n\(doodouConfiaTxt)\n")
        
        let escolhaContar = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Amarrar Grannus e levá-lo embora. ou [2] Dizer o que ele precisa saber.", opcao1: "\n- \(nomeJogador): Já disse que contaremos no caminho, agora me deixe te amarrar!", opcao2: """

- Doodou: EI EI não conte nada a ele agora, contamos no caminho ande logo!!!

- \(nomeJogador): Você tem razão, nosso tempo está acabando!

- Grannus: Tempo? Do que vocês estão falando?

""")
        
        usaConsole.printaEscrita("\n\(escolhaContar)\n\(coordenadasTxt)")
        jogador.inventario.mostrarInventario()
        
        var escolhaMapa: String
        repeat {
            print("\n\nEscolha o item: ")
            escolhaMapa = readLine()!
            
            if escolhaMapa == "Mapa" || escolhaMapa == "mapa" {
                usaConsole.printaSimbolos("\(mapaTxt)")
            } else {
                print("\nEscolha uma opção válida.")
            }
        } while escolhaMapa != "Mapa" && escolhaMapa != "mapa"
        
        let finalJogo = FinalJogo()
        finalJogo.finalJogo()
    }
}
