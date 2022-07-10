//
//  Combate02.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 28/06/22.
//

import Foundation

class Combate02 {
    let hipogrifo = Hipogrifo(nome: "Hipogrifo", vida: 100)
    
    func combate02() -> Bool {
        var retornoAtaque = false
        
        print("\n\nPersonagem: \(jogador.nome)")
        print("Ataques: \n[1] Corte com espada\n[2] Feitiço retardatário\n[3] Defender")
        print("Vida: \(jogador.vida)")
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
        hipogrifo.vida -= jogador.ataqueFeitico(atacar: true)
        print("\nVida Hipogrifo: \(hipogrifo.vida)")
        
        usaConsole.printaEscrita("\n- \(nomeJogador): OWWW droga ele está furioso! Doodou me ajudeeee!!")
        print("\n- Hipogrifo: Ataque de bicada!")
        jogador.vida -= hipogrifo.ataqueBicada(atacar: true)
        print("\nVida \(nomeJogador): \(jogador.vida)")
        
        var escolheAtaque: String
        repeat {
            print("\n\nPersonagem: \(jogador.nome)")
            print("Ataques: \n[1] Corte com espada\n[2] Feitiço retardatário\n[3] Defender")
            print("Vida: \(jogador.vida)")
            escolheAtaque = readLine()!
            
            switch escolheAtaque {
            case "1":
                print("Corte com espada!!")
                hipogrifo.vida -= jogador.ataqueEspada(atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: Ataque de bicada!")
                jogador.vida -= hipogrifo.ataqueBicada(atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            case "2":
                print("Feitiço retardatário!!")
                hipogrifo.vida -= jogador.ataqueFeitico(atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: Ataque de bicada!")
                jogador.vida -= hipogrifo.ataqueBicada(atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            case "3":
                print("Defender!!")
                jogador.vida -= jogador.defesa(defender: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: Ataque de bicada!")
                jogador.vida -= hipogrifo.ataqueBicada(atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            default:
                print("Escolha uma opção válida!")
            }
            
        } while jogador.vida > 0
        
        usaConsole.printaEscrita("""

🄶🄰🄼🄴 🄾🅅🄴🅁


Você perdeu todos os seus pontos de vida! Na próxima pense melhor antes de atacar um Hipogrifo.


""")
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
    
    
    func ataqueEspada() -> Bool {
        var resultadoBatalha = false
        
        usaConsole.printaEscrita("""

- \(nomeJogador): AHHH TOME ISSO SEU MONSTRO!!!

- Hipogrifo: IIAAAARRRRGGGHHH

""")
        
        hipogrifo.vida -= jogador.ataqueEspada(atacar: true)
        print("\nVida Hipogrifo: \(hipogrifo.vida)")
        
        usaConsole.printaEscrita("\n- \(nomeJogador): OWWW droga ele está furioso! Doodou me ajudeeee!!")
        print("\n- Hipogrifo: Ataque de patada!")
        jogador.vida -= hipogrifo.ataquePatas(atacar: true)
        print("\nVida \(nomeJogador): \(jogador.vida)")
        
        var escolheAtaque: String
        repeat {
            print("\n\nPersonagem: \(jogador.nome)")
            print("Ataques: \n[1] Corte com espada\n[2] Feitiço retardatário\n[3] Defender")
            print("Vida: \(jogador.vida)")
            escolheAtaque = readLine()!
            
            switch escolheAtaque {
            case "1":
                print("\nCorte com espada!!")
                hipogrifo.vida -= jogador.ataqueEspada(atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                if hipogrifo.vida > 0 {
                    print("\n- Hipogrifo: Ataque de bicada!")
                    jogador.vida -= hipogrifo.ataqueAsas(atacar: true)
                    print("\nVida \(nomeJogador): \(jogador.vida)")
                } else {
                    break
                }
            case "2":
                print("\nFeitiço retardatário!!")
                hipogrifo.vida -= jogador.ataqueFeitico(atacar: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                if hipogrifo.vida > 0 {
                    print("\n- Hipogrifo: Ataque de bicada!")
                    jogador.vida -= hipogrifo.ataqueAsas(atacar: true)
                    print("\nVida \(nomeJogador): \(jogador.vida)")
                } else {
                    break
                }
                
            case "3":
                print("\nDefender!!")
                jogador.vida -= jogador.defesa(defender: true)
                print("\nVida Hipogrifo: \(hipogrifo.vida)")
                print("\n- Hipogrifo: Ataque de bicada!")
                jogador.vida -= hipogrifo.ataquePatas(atacar: true)
                print("\nVida \(nomeJogador): \(jogador.vida)")
            default:
                print("Escolha uma opção válida!")
            }
            
        } while hipogrifo.vida > 0
        
        usaConsole.printaEscrita("""

🄶🄰🄼🄴 🄾🅅🄴🅁


Você matou o Hipogrifo, meus parabéns mas levou muito tempo para subir a montanha a pé e Bryana morreu sem nenhum tipo de ajuda.


""")
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
