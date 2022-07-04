//
//  BatalhaFinal1.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 30/06/22.
//

import Foundation

class BatalhaFinal1 {
    
    public func batalhaFinal1() {
        let grannus = Grannus(ataqueRevidus: "REVIDUS", nome: "Grannus", vida: 100)
        
        escritaConsole.printaEscrita("""

- \(nomeJogador): Certo! AAAARRRGG TOME ISSO!!!!!!!

""")
        
        grannus.vida -= 35
        print("Vida Grannus: \(grannus.vida)")
        
        print("""

- Doodou: Muito bem \(nomeJogador)!! Use sua espada agora!!!!

""")
        var escolhaAtaque: String
        
        repeat {
            print("- \(nomeJogador): [1] Atacar com a espada. ou [2] Esperar o ataque de Grannus.")
            escolhaAtaque = readLine()!
            
            if escolhaAtaque == "1" {
                escritaConsole.printaEscrita("- \(nomeJogador): AAAAHHH SEGURA ESSA!!!!!!!")
            } else if escolhaAtaque == "2" {
                escritaConsole.printaEscrita("- \(nomeJogador): Espera aí, cadê ele?")
            } else {
                print("Digite uma opção válida.")
            }
        } while escolhaAtaque != "1" && escolhaAtaque != "2"
                    
                    
        escritaConsole.printaEscrita("""

- \(nomeJogador): Não consigo ver nada com essa fumaça!!!!!

- Doodou: DROGA!!! \(nomeJogador) em cima de você!!!!

- Grannus: CRUENTOS PASSOS

""")
                    
                    jogador.vida -= 30
                    
        escritaConsole.printaEscrita("""

Vida \(nomeJogador): \(jogador.vida)

- \(nomeJogador): AAAAARRHHHH!!!!!! DOODOU ELE É MUITO FORTE!!!!!!

- Grannus: Acabou pra você criança! Você sangrará até que sua vida acabe!!!

- \(nomeJogador): Não tão cedo Grannus, não me subestime!!!

- Grannus: MAS O QUE!!!?

- \(nomeJogador): Essa armadura realmente foi útil!! Agora é minha vez!!!!

""")
                    var escolhaFala1: String
                    repeat {
            print("- \(nomeJogador): [1] Você devia se arrepender enquanto pode! ou [2] Eu não vou errar dessa vez!")
            escolhaFala1 = readLine()!
            
            if escolhaFala1 == "1" {
                escritaConsole.printaEscrita("\(nomeJogador): Você devia se arrepender enquanto pode!")
            }else if escolhaFala1 == "2" {
                escritaConsole.printaEscrita("\(nomeJogador): Eu não vou errar dessa vez!")
            } else {
                print("Escolha uma opção válida.")
            }
        } while escolhaFala1 != "1" && escolhaFala1 != "2"
                    
                    
        escritaConsole.printaEscrita("""

- Grannus: AAAAHHHH TIRA ISSO DE MIM!! EU NÃO AGUENTO MAIS!!!!!

""")
                    grannus.vida -= 15
                    
        escritaConsole.printaEscrita("""
Vida Grannus: \(grannus.vida)

- \(nomeJogador): O que foi isso? Como o olho dele mudou de cor?

- Doodou: Ele está com uma magia obscura dentro dele \(nomeJogador) eu sinto uma força muito estranha!

Pode ser o feitiço que o irmão do seu pai usou para possuir o corpo de Grannus antes de morrer.

Precisamos ajudá-lo, ele está sofrendo!!

""")
                    
                    var escolhaFala2: String
                    
                    repeat {
            print("- \(nomeJogador): [1] AAAAH EU VOU ACABAR COM A VIDA DELE!!!!!! ou [2] Como vamos ajudá-lo?")
            escolhaFala2 = readLine()!
            if escolhaFala2 == "1" {
                escritaConsole.printaEscrita("""

- Doodou: Se você matar ele, pode ser que nunca descobriremos a cura para sua irmã!

- \(nomeJogador): Você tem razão, precisamos dele vivo! Você tem algum plano?
""")
            }else if escolhaFala2 == "2" {
                print("")
            }else {
                print("Escolha uma opção válida.")
            }
        } while escolhaFala2 != "1" && escolhaFala2 != "2"
                    
        escritaConsole.printaEscrita("""

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
                grannus.vida -= 15
                escritaConsole.printaEscrita("""

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
               
        escritaConsole.printaEscrita("""
- Doodou: AGORA!!! \(nomeJogador) você vai precisa me ajudar!

- Doodou: CORPUUUSS RETIREEEE!!!!

- Grannus: AAAAAAAAAHHH!!!!

""")
                    grannus.vida = 50
                    grannus.vida -= 40
                    
        escritaConsole.printaEscrita("""
Vida Grannus: \(grannus.vida)

- Doodou: Muito bem \(nomeJogador)! Agora, segure ele até o feitiço fazer efeito!

""")
                    var escolhaFala3: String
                    repeat {
            print("- \(nomeJogador): [1] Doodou, isso vai dar certo? ou [2] Ele pode morrer?")
            escolhaFala3 = readLine()!
            
            if escolhaFala3 == "1" {
                escritaConsole.printaEscrita("\(nomeJogador): Doodou, isso vai dar certo?")
            }else if escolhaFala3 == "2" {
                escritaConsole.printaEscrita("\(nomeJogador): Ele pode morrer?")
            } else {
                print("Escolha uma opção válida.")
            }
        } while escolhaFala3 != "1" && escolhaFala3 != "2"
                    
        escritaConsole.printaEscrita("""

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
                    
                    var escolhaFala4: String
                    repeat {
            print("- \(nomeJogador): [1] Vamos te contar tudo que precisa saber! ou [2] Você realmente não se lembra de nada?")
            escolhaFala4 = readLine()!
            
            if escolhaFala4 == "1" {
                escritaConsole.printaEscrita("\n- \(nomeJogador): Vamos te contar tudo que precisa saber!")
            }else if escolhaFala4 == "2" {
                escritaConsole.printaEscrita("\n- \(nomeJogador): Você realmente não se lembra de nada?")
            } else {
                print("\nEscolha uma opção válida.")
            }
        } while escolhaFala4 != "1" && escolhaFala4 != "2"
                    
        escritaConsole.printaEscrita("""

- Grannus: Eu me lembro de que... me lembro que salvamos a cidade e derrotamos o Centrion! O que aconteceu depois?

- \(nomeJogador): Doodou você acredita nele? Vamos levá-lo pra casa, ainda precisamos da ajuda dele!

- Doodou: Vamos amarrá-lo eu ainda não confio nele!

- Grannus: Vocês ainda não me disseram o que estamos fazendo aqui!

""")
                    var escolhaContar: String
                    repeat {
            print("- \(nomeJogador): [1] Amarrar Grannus e levá-lo embora. ou [2] Dizer o que ele precisa saber.")
            escolhaContar = readLine()!
            
            if escolhaContar == "1" {
                escritaConsole.printaEscrita("\n\(nomeJogador): Já disse que contaremos no caminho, agora me deixe te amarrar!")
            }else if escolhaContar == "2" {
                escritaConsole.printaEscrita("""

\n\(nomeJogador): Doodou: EI EI não conte nada a ele agora, contamos no caminho ande logo!!!

- \(nomeJogador): Você tem razão, nosso tempo está acabando!

- Grannus: Tempo? Do que vocês estão falando?

""")
            } else {
                print("\nEscolha uma opção válida.")
            }
        } while escolhaContar != "1" && escolhaContar != "2"
                  
        escritaConsole.printaEscrita("""

- Doodou: \(nomeJogador) vou chamar nosso amigo, se prepare e explique a ele o que precisamos fazer!

- \(nomeJogador): Lá vem você com suas ideias. HAHAHA ele vai adorar isso!!

- Doodou: \(nomeJogador), para irmos embora vamos precisar das coordenadas! você consegue olhar no mapa?


""")
                    jogador.inventario.mostrarInventario(vetor: jogador.inventario.meuInventario)
                    
                    var escolhaMapa: String
                    repeat {
            print("\n\nEscolha o item: ")
            escolhaMapa = readLine()!
            
            if escolhaMapa == "Mapa" || escolhaMapa == "mapa" {
                escritaConsole.printaSimbolos("""

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
