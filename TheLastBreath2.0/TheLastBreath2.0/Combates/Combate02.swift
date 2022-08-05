//
//  Combate02.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 28/06/22.
//

import Foundation

class Combate02 {
    
    let hipogrifo = Hipogrifo(nome: "Hipogrifo", vida: 100, nomeAtaque01: "Ataque de bicada!", nomeAtaque02: "Ataque com asas!", nomeAtaque03: "Ataque com patas!")
    
    func combate02() -> Bool {
        var retornoAtaque = false
        jogador.vida = 100
        
        infosPersonagemAtaque()
        
        var escolhaAtaque: String
        
        repeat {
            print("\nEscolha seu ataque: ")
            escolhaAtaque = readLine()!
            
            switch escolhaAtaque {
            case "1":
                retornoAtaque = ataqueEspada()
                return retornoAtaque
            case "2":
                retornoAtaque = feiticoDoodou()
                return retornoAtaque
            case "3":
                usaConsole.printaEscrita("\nVocê se defendeu do Hipogrifo e isso fez com que ele não tenha raiva de você!")
                return false
            default:
                print("Digite uma opção válida.")
            }
        } while escolhaAtaque != "1" && escolhaAtaque != "2"
        
        return retornoAtaque
    }
    
    func feiticoDoodou() -> Bool {
        var resultadoBatalha = false
        
        usaConsole.printaEscrita("""

- \(nomeJogador): AHHH TOME ISSO SEU MONSTRO!!!

- Hipogrifo: IIAAAARRRRGGGHHH

""")
        hipogrifo.vida -= jogador.ataque(dano: 30, atacar: true)
        print("\nVida Hipogrifo: \(hipogrifo.vida)")
        
        usaConsole.printaEscrita("\n- \(nomeJogador): OWWW droga ele está furioso! Doodou me ajudeeee!!")
        print("\n- Hipogrifo: \(hipogrifo.nomeAtaque01)")
        jogador.vida -= hipogrifo.ataque(dano: 50, atacar: true)
        print("\nVida \(nomeJogador): \(jogador.vida)")
        
        var escolheAtaque: String
        repeat {
            infosPersonagemAtaque()
            escolheAtaque = readLine()!
            
            switch escolheAtaque {
            case "1":
                print(jogador.nomeAtaque01)
                hipogrifo.vida -= jogador.ataque(dano: 40, atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: \(hipogrifo.nomeAtaque01)")
                jogador.vida -= hipogrifo.ataque(dano: 50, atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            case "2":
                print(jogador.nomeAtaque02)
                hipogrifo.vida -= jogador.ataque(dano: 30, atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: \(hipogrifo.nomeAtaque01)")
                jogador.vida -= hipogrifo.ataque(dano: 50, atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            case "3":
                print(jogador.nomeAtaque03)
                jogador.vida -= jogador.ataque(dano: 10, atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: \(hipogrifo.nomeAtaque01)")
                jogador.vida -= hipogrifo.ataque(dano: 50, atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            default:
                print("Escolha uma opção válida!")
            }
            
        } while jogador.vida > 0
        
        usaConsole.printaEscrita("""

🄶🄰🄼🄴 🄾🅅🄴🅁


Você perdeu todos os seus pontos de vida! Na próxima pense melhor antes de atacar um Hipogrifo.


""")
        resultadoBatalha = escolhaDoGameOver()
        return resultadoBatalha
    }
    
    
    func ataqueEspada() -> Bool {
        var resultadoBatalha = false
        
        usaConsole.printaEscrita("""

- \(nomeJogador): AHHH TOME ISSO SEU MONSTRO!!!

- Hipogrifo: IIAAAARRRRGGGHHH

""")
        
        hipogrifo.vida -= jogador.ataque(dano: 40, atacar: true)
        print("\nVida Hipogrifo: \(hipogrifo.vida)")
        
        usaConsole.printaEscrita("\n- \(nomeJogador): OWWW droga ele está furioso! Doodou me ajudeeee!!")
        print("\n- Hipogrifo: \(hipogrifo.nomeAtaque03)")
        jogador.vida -= hipogrifo.ataque(dano: 30, atacar: true)
        print("\nVida \(nomeJogador): \(jogador.vida)")
        
        var escolheAtaque: String
        repeat {
            infosPersonagemAtaque()
            escolheAtaque = readLine()!
            
            switch escolheAtaque {
            case "1":
                print(jogador.nomeAtaque01)
                hipogrifo.vida -= jogador.ataque(dano: 40, atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                if hipogrifo.vida > 0 {
                    print("\n- Hipogrifo: \(hipogrifo.nomeAtaque02)")
                    jogador.vida -= hipogrifo.ataque(dano: 30, atacar: true)
                    print("\nVida \(nomeJogador): \(jogador.vida)")
                } else {
                    break
                }
            case "2":
                print(jogador.nomeAtaque02)
                hipogrifo.vida -= jogador.ataque(dano: 30, atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                if hipogrifo.vida > 0 {
                    print("\n- Hipogrifo: \(hipogrifo.nomeAtaque02)")
                    jogador.vida -= hipogrifo.ataque(dano: 30, atacar: true)
                    print("\nVida \(nomeJogador): \(jogador.vida)")
                } else {
                    break
                }
                
            case "3":
                print(jogador.nomeAtaque03)
                jogador.vida -= jogador.ataque(dano: 10, atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: \(hipogrifo.nomeAtaque03)")
                jogador.vida -= hipogrifo.ataque(dano: 30, atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            default:
                print("Escolha uma opção válida!")
            }
            
        } while hipogrifo.vida > 0
        
        usaConsole.printaEscrita("""

🄶🄰🄼🄴 🄾🅅🄴🅁


Você matou o Hipogrifo, meus parabéns! Mas levou muito tempo para subir a montanha a pé e Bryana morreu sem nenhum tipo de ajuda.


""")
        resultadoBatalha = escolhaDoGameOver()
        return resultadoBatalha
}
    private func infosPersonagemAtaque() {
        print("\n\nPersonagem: \(jogador.nome)")
        print("Ataques: \n[1] \(jogador.nomeAtaque01)\n[2] \(jogador.nomeAtaque02)\n[3] \(jogador.nomeAtaque03)")
        print("Vida: \(jogador.vida)")
    }
    
    private func escolhaDoGameOver() -> Bool {
        var resultadoBatalha = false
        var escolhaFinal: String
        
        repeat {
            print("\n[1] Mudar escolha\n[2] Ir para menu")
            escolhaFinal = readLine()!
            if escolhaFinal == "1" {
                jogador.vida = 100
                resultadoBatalha = false
                return resultadoBatalha
            } else if escolhaFinal == "2" {
                resultadoBatalha = true
                return resultadoBatalha
            } else {
                print("Escolha uma opção válida!")
            }
        } while escolhaFinal != "1" && escolhaFinal != "2"
        
        return resultadoBatalha
    }
}
