//
//  InicioJogo.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class InicioJogo {
    
    public func entrada() {
        usaConsole.printaEscrita("\n\n..:: THE • LAST • BREATH ::..")
        usaConsole.printaEscrita("\nBem-vindo ao intenso mundo de The Last Breath!")
        
        var escolha: String
        let capitulo1 = Capitulo1()
        
        repeat {
            print("\n\(nomeJogador) gostaria de saber mais sobre a trama no qual você está prestes a entrar ou ir direto para o jogo?")
            print("\n[1] - Saber mais \n[2] - Iniciar jogo \n[3] - Voltar para menu")
            escolha = readLine()!
            
            switch escolha {
            case "1":
                usaConsole.printaEscrita("\(sinopseTxt)")
                usaConsole.printaEscrita("\nIniciando jogo...")
                capitulo1.capitulo1()
            case "2":
                capitulo1.capitulo1()
            case "3":
                return
            default:
                print("\nDigite um opção válido!")
            }
        } while escolha != "3"
    }
    init() { }
}
