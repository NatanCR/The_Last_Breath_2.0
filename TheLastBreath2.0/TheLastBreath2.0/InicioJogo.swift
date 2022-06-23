//
//  InicioJogo.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class InicioJogo {
    
    public func entrada() {
        print("\n\n..:: THE • LAST • BREATH ::..")
        print("\nBem-vindo ao intenso mundo de The Last Breath!")
        print("\nPara começarmos nossa aventura, por favor diga diga seu nome: ")
        var nomePlayer: String = ""
        nomePlayer = readLine()!
        
        var escolha: String
        var capitulo1 = Capitulo1()
        
        repeat {
            print("Entrei aqui")
//            printaEscrita("\n\(nomePlayer) gostaria de saber mais sobre a trama no qual você está prestes a entrar ou ir direto para o jogo?")
//            print("\n[1] - Saber mais \n[2] - Iniciar jogo \n[3] - Voltar para menu")
            escolha = readLine()!

            switch escolha {
            case "1":
                sinopse()
            case "2":
                capitulo1.capitulo1()
            case "3":
              break
            default:
                print("\nDigite um valor válido!")
            }
        } while escolha != "3"
    }
    
    private func sinopse() {
        var capitulo1 = Capitulo1()
        print("\nA história se baseia em uma trama repleta de mistérios e magias, onde você viajará em busca da cura que irá salvar sua irmã de uma maldição lançada por um mago poderoso. Durante esta jornada você irá enfrentar diversos obstáculos e desafios que despertará habilidades ocultas dentro de você.")
        printaEscrita("\nAgora você sabe o seu destino!")
        printaEscrita("\nIniciando jogo...")
        capitulo1.capitulo1()
    }
    
    private func printaEscrita(_ text: String) {
        let arr = Array.init(text)
        
        for i in arr {
            usleep(100001)
            print(i, terminator: "")
        }
        print("")
    }
    
    init() { }
}
