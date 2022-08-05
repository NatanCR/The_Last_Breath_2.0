//
//  Capitulo1.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class Capitulo1 {
    
    public func capitulo1() {
        usaConsole.printaEscrita("\(entradaCapitulo1Txt)")
        var centrion: String
        repeat {
            print("[1] Descobrir o que Centrion quis dizer ou [2] Continuar história.")
            centrion = readLine()!
            
            if centrion == "1" {
                usaConsole.printaEscrita("\(historiaDeCentrionTxt)")
            } else if centrion == "2" {
                print("")
            } else {
                print("Digite uma opção válida.")
            }
        } while centrion != "1" && centrion != "2"
        
        usaConsole.printaEscrita("\(preCombate01Txt)")

        print("\n...::: COMBATE :::...")
        let combate01 = Combate01()
        combate01.combate01()
        
        usaConsole.printaEscrita("\(finalCapitulo1Txt)")
        
        var escolha: String
        let capitulo2 = Capitulo2()
        
        repeat {
            print("""

- Solveig: \(nomeJogador) preciso lhe ensinar os conhecimentos que nosso pai tinha, para que um dia você possa se defender sozinho(a), você entende isso?

[1] Aprender os conhecimentos ou [2] Ignorar Solveig

""")
            escolha = readLine()!
            
            switch escolha {
            case "1":
                usaConsole.printaEscrita("\(aprenderConhecimentosTxt)")
                capitulo2.capitulo2()
            case "2":
                print("\n- \(nomeJogador): ... ('cri-cri')\n")
            default:
                print("Escolha uma opção válida!")
            }
        } while escolha != "1"
        
    }

    init() { }
}
