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
        
        usaConsole.printaEscrita("""

- \(nomeJogador): Certo! AAAARRRGG TOME ISSO!!!!!!!

""")
        
        grannus.vida -= jogador.ataque(dano: 35, atacar: true)
        print("Vida Grannus: \(grannus.vida)")
        
        print("""

- Doodou: Muito bem \(nomeJogador)!! Use sua espada agora!!!!

""")
        let escolhaAtaque = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Atacar com a espada. ou [2] Esperar o ataque de Grannus.", opcao1: "- \(nomeJogador): AAAAHHH SEGURA ESSA!!!!!!!", opcao2: "- \(nomeJogador): Espera aí, cadê ele?")
        
        usaConsole.printaEscrita("""
\(escolhaAtaque)

- \(nomeJogador): Não consigo ver nada com essa fumaça!!!!!

- Doodou: DROGA!!! \(nomeJogador) em cima de você!!!!

- Grannus: CRUENTOS PASSOS

""")
        
        jogador.vida -= grannus.ataque(dano: 30, atacar: true)
        
        usaConsole.printaEscrita("""

Vida \(nomeJogador): \(jogador.vida)

- \(nomeJogador): AAAAARRHHHH!!!!!! DOODOU ELE É MUITO FORTE!!!!!!

- Grannus: Acabou pra você criança! Você sangrará até que sua vida acabe!!!

- \(nomeJogador): Não tão cedo Grannus, não me subestime!!!

- Grannus: MAS O QUE!!!?

- \(nomeJogador): Essa armadura realmente foi útil!! Agora é minha vez!!!!

""")
        let fala1 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Você devia se arrepender enquanto pode! ou [2] Eu não vou errar dessa vez!", opcao1: "- \(nomeJogador): Você devia se arrepender enquanto pode!", opcao2: "- \(nomeJogador): Eu não vou errar dessa vez!")
        
        usaConsole.printaEscrita("""
\(fala1)

- Grannus: AAAAHHHH TIRA ISSO DE MIM!! EU NÃO AGUENTO MAIS!!!!!

""")
        grannus.vida -= jogador.ataque(dano: 15, atacar: true)
        
        usaConsole.printaEscrita("""
Vida Grannus: \(grannus.vida)

- \(nomeJogador): O que foi isso? Como o olho dele mudou de cor?

- Doodou: Ele está com uma magia obscura dentro dele \(nomeJogador) eu sinto uma força muito estranha!

Pode ser o feitiço que o irmão do seu pai usou para possuir o corpo de Grannus antes de morrer.

Precisamos ajudá-lo, ele está sofrendo!!

""")
        
        let fala2 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] AAAAH EU VOU ACABAR COM A VIDA DELE!!!!!! ou [2] Como vamos ajudá-lo?", opcao1: """

- Doodou: Se você matar ele, pode ser que nunca descobriremos a cura para sua irmã!

- \(nomeJogador): Você tem razão, precisamos dele vivo! Você tem algum plano?
""", opcao2: "")
        
        usaConsole.printaEscrita("""
\(fala2)

- Doodou: Eu tenho um plano, mas pode ser perigoso! SE AFASTE!

- Doodou: Distraia ele \(nomeJogador), vou tentar usar algo pelas costas dele!

""")
        var escolhaErrada: String
        
        repeat {
            print("- \(nomeJogador): [1] Distrair Grannus ou [2] Atacar Grannus")
            escolhaErrada = readLine()!
            if escolhaErrada == "1" {
                print("")
            } else if escolhaErrada == "2" {
                grannus.vida -= jogador.ataque(dano: 15, atacar: true)
                usaConsole.printaEscrita("""

Vida Grannus: \(grannus.vida)

- Doodou: NAAAAOOO!!! EU TINHA UM PLANO!!!

- Grannus: Escolha errada!! Agora MORRAAA!!

- \(nomeJogador): O que você fez!?

🄶🄰🄼🄴 🄾🅅🄴🅁



Você fez a escolha errada mas terá sua última chance.


""")
            } else {
                print("Digite uma opção válida.")
            }
        } while escolhaErrada != "1" && escolhaErrada != "2"
        
        usaConsole.printaEscrita("""
- Doodou: AGORA!!! \(nomeJogador) você vai precisa me ajudar!

- Doodou: CORPUUUSS RETIREEEE!!!!

- Grannus: AAAAAAAAAHHH!!!!

""")
        grannus.vida = 50
        grannus.vida -= jogador.ataque(dano: 40, atacar: true)
        
        usaConsole.printaEscrita("""
Vida Grannus: \(grannus.vida)

- Doodou: Muito bem \(nomeJogador)! Agora, segure ele até o feitiço fazer efeito!

""")
        let fala3 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Doodou, isso vai dar certo? ou [2] Ele pode morrer?", opcao1: "- \(nomeJogador): Doodou, isso vai dar certo?", opcao2: "- \(nomeJogador): Ele pode morrer?")
        
        usaConsole.printaEscrita("""
\(fala3)

- Doodou: Eu espero que dê certo e que ele não morra!!

- Grannus: O que você fez comigo?


\(nomeJogador) e Doodou torcem para que o efeito da poção faça com que Grannus volte a si depois de tantos anos enfeitiçado, caso contrário eles não terão escolha ao não ser matá-lo.


- Doodou: Veja \(nomeJogador) eu disse que ia dar certo!

- \(nomeJogador): Grannus olhe pra mim, você sabe quem sou?

- Grannus: Onde... onde estou, que lugar é esse? Porque vocês estão aqui?

- Doodou: AAAHH É essa poção pegou ele de jeito!

- Grannus: Você é a criança não é? Que salvamos aquele dia! Onde está meu mestre?

- Doodou você sabe!! ONDE ESTÁ MEU MESTRE!!!!

- Doodou: Olha cara... temos muito pra te contar.

""")
        
        let usaConsole = Console()
        let fala4 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Vamos te contar tudo que precisa saber! ou [2] Você realmente não se lembra de nada?", opcao1: "\n- \(nomeJogador): Vamos te contar tudo que precisa saber!", opcao2: "\n- \(nomeJogador): Você realmente não se lembra de nada?")
        
        usaConsole.printaEscrita("""
\(fala4)

- Grannus: Eu me lembro de que... me lembro que salvamos a cidade e derrotamos o Centrion! O que aconteceu depois?

- \(nomeJogador): Doodou você acredita nele? Vamos levá-lo pra casa, ainda precisamos da ajuda dele!

- Doodou: Vamos amarrá-lo eu ainda não confio nele!

- Grannus: Vocês ainda não me disseram o que estamos fazendo aqui!

""")
        let escolhaContar = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Amarrar Grannus e levá-lo embora. ou [2] Dizer o que ele precisa saber.", opcao1: "\n- \(nomeJogador): Já disse que contaremos no caminho, agora me deixe te amarrar!", opcao2: """

- Doodou: EI EI não conte nada a ele agora, contamos no caminho ande logo!!!

- \(nomeJogador): Você tem razão, nosso tempo está acabando!

- Grannus: Tempo? Do que vocês estão falando?

""")
        
        usaConsole.printaEscrita("""
\(escolhaContar)

- Doodou: \(nomeJogador) vou chamar nosso amigo, se prepare e explique a ele o que precisamos fazer!

- \(nomeJogador): Lá vem você com suas ideias. HAHAHA ele vai adorar isso!!

- Doodou: \(nomeJogador), para irmos embora vamos precisar das coordenadas! você consegue olhar no mapa?


""")
       // jogador.inventario.mostrarInventario()
        
        var escolhaMapa: String
        repeat {
            print("\n\nEscolha o item: ")
            escolhaMapa = readLine()!
            
            if escolhaMapa == "Mapa" || escolhaMapa == "mapa" {
                usaConsole.printaSimbolos("""

███╗░░░███╗░█████╗░██████╗░░█████╗░
████╗░████║██╔══██╗██╔══██╗██╔══██╗
██╔████╔██║███████║██████╔╝███████║
██║╚██╔╝██║██╔══██║██╔═══╝░██╔══██║
██║░╚═╝░██║██║░░██║██║░░░░░██║░░██║
╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝

""")
            } else {
                print("\nEscolha uma opção válida.")
            }
        } while escolhaMapa != "Mapa" && escolhaMapa != "mapa"
        
        let finalJogo = FinalJogo()
        finalJogo.finalJogo()
    }
}
