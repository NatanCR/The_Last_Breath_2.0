//
//  InicioJogo.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class InicioJogo {
    
    public func entrada() -> [String: Int] {
        print("\n\n..:: THE • LAST • BREATH ::..")
        print("\nBem-vindo ao intenso mundo de The Last Breath!")
        print("\nPara começarmos nossa aventura, por favor diga diga seu nome: ")
        let nomePlayer: String = readLine()!
        let personagemPlayer = Personagem(nome: nomePlayer, vida: 100)
        
        var escolha: String
        let capitulo1 = Capitulo1()
        let menu = Menu()
        
        repeat {
            print("\n\(personagemPlayer.nome) gostaria de saber mais sobre a trama no qual você está prestes a entrar ou ir direto para o jogo?")
            print("\n[1] - Saber mais \n[2] - Iniciar jogo \n[3] - Voltar para menu")
            escolha = readLine()!

            switch escolha {
            case "1":
                sinopse()
            case "2":
                capitulo1.capitulo1()
            case "3":
                menu.menuJogo()
            default:
                print("\nDigite um valor válido!")
            }
        } while escolha != "3"
        return [personagemPlayer.nome: personagemPlayer.vida]
    }
    
    private func sinopse() {
        let capitulo1 = Capitulo1()
        print("""
A história se baseia em uma trama repleta de mistérios e magias, onde você viajará em busca da cura que irá salvar sua irmã de uma maldição lançada por um mago poderoso. Durante esta jornada você irá enfrentar diversos obstáculos e desafios que despertará habilidades ocultas dentro de você.

        Agora você sabe o seu destino!
""")
        print("\nIniciando jogo...")
        capitulo1.capitulo1()
    }
    
    init() { }
}
