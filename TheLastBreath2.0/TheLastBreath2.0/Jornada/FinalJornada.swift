//
//  FinalJornada.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class FinalJornada {
    
    public func finalJornada() {
        usaConsole.printaEscrita("\(entradaCapituloFinalTxt)")
        
        let escolhaPronto = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Estou pronto! ou [2] Ele vai pagar pelo o que fez!", opcao1: "\n- \(nomeJogador): Estou pronto!", opcao2: "\n- \(nomeJogador): Ele vai pagar pelo o que fez!")
        
        usaConsole.printaEscrita("\(escolhaPronto)\n\(tomaPilulaTxt) ")
        
        var escolhaPilula: String
        
        repeat {
            print("- \(nomeJogador): [1] Aceitar ou [2] Recusar")
            escolhaPilula = readLine()!
            if escolhaPilula == "1" {
                jogador.vida = 100
                print("\nVida \(nomeJogador): \(jogador.vida)")
            } else if escolhaPilula == "2" {
                jogador.vida = 90
                print("\nVida \(nomeJogador): \(jogador.vida)")
            } else {
                print("\nDigite uma opção válida.")
            }
        } while escolhaPilula != "1" && escolhaPilula != "2"
        
        
        usaConsole.printaEscrita("""

- \(nomeJogador): Certo vamos andando!

- Doodou: Que estranho não há guardas e não vejo ninguém.

""")
        let escolhaFala1 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Ele deve ser muito convencido mesmo. ou [2] Isso pode ser uma armadilha!", opcao1: "\n- \(nomeJogador): Ele deve ser muito convencido mesmo.", opcao2: "\n- \(nomeJogador): Isso pode ser uma armadilha!")
        
        usaConsole.printaEscrita("\(escolhaFala1)\n\(encontroComGrannusTxt)")
        
        let escolhaFala2 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Você foi covarde matando meu pai enquanto ele estava fraco! ou [2] Você vai pagar por tudo que fez cretino!", opcao1: "\n- \(nomeJogador): Você foi covarde matando meu pai enquanto ele estava fraco!", opcao2: "\n- \(nomeJogador): Você vai pagar por tudo que fez cretino!")
        
        
        usaConsole.printaEscrita("\(escolhaFala2)\n\(reconheceJogadorTxt)")
        
        let escolhaFala3 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Então se lembra de mim sabe porque eu estou aqui! ou [2] Eu vim acabar com a maldição que você jogou na minha irmã!", opcao1: "\n- \(nomeJogador): Então se lembra de mim sabe porque eu estou aqui!", opcao2: "\n- \(nomeJogador): Eu vim acabar com a maldição que você jogou na minha irmã!")
        
        usaConsole.printaEscrita("\(escolhaFala3)\n\(grannusEnfeiticadoTxt)")
        
        let escolhaFinal = escolhaFinal()
        
        if escolhaFinal == "1" {
            let batalhaFinal1 = BatalhaFinal1()
            batalhaFinal1.batalhaFinal1()
        } else if escolhaFinal == "2" {
            let batalhaFinal2 = BatalhaFinal2()
            batalhaFinal2.batalhaFinal2()
        }
    }
    
    func escolhaFinal() -> String{
        var escolhaFinal: String
        repeat {
            print("[1] Jogar poção ou [2] Atacar com a espada")
            escolhaFinal = readLine()!
            if escolhaFinal != "1" && escolhaFinal != "2" {
                print("Digite uma opção válida.")
            }
        } while escolhaFinal != "1" && escolhaFinal != "2"
        return escolhaFinal
    }
}
