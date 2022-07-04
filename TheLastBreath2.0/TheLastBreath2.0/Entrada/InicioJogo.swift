//
//  InicioJogo.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class InicioJogo {
    
    public func entrada() {
        escritaConsole.printaEscrita("\n\n..:: THE • LAST • BREATH ::..")
        escritaConsole.printaEscrita("\nBem-vindo ao intenso mundo de The Last Breath!")
      
        var escolha: String
        let capitulo1 = Capitulo1()
        
        repeat {
            print("\n\(nomeJogador) gostaria de saber mais sobre a trama no qual você está prestes a entrar ou ir direto para o jogo?")
            print("\n[1] - Saber mais \n[2] - Iniciar jogo \n[3] - Voltar para menu")
            escolha = readLine()!

            switch escolha {
            case "1":
                sinopse()
            case "2":
                capitulo1.capitulo1()
            case "3":
                return
            default:
                print("\nDigite um opção válido!")
            }
        } while escolha != "3"
    }
    
    private func sinopse() {
        let capitulo1 = Capitulo1()
        escritaConsole.printaEscrita("""

A história se baseia em uma trama repleta de mistérios e magias, onde você viajará em busca da cura que irá salvar sua irmã de uma maldição lançada por um mago poderoso. Durante esta jornada você irá enfrentar diversos obstáculos e desafios que despertará habilidades ocultas dentro de você.

        Agora você sabe o seu destino!

""")
        escritaConsole.printaEscrita("\nIniciando jogo...")
        capitulo1.capitulo1()
    }
    init() { }
}
