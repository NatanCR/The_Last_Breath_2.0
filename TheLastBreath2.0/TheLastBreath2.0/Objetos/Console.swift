//
//  Console.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 27/06/22.
//

import Foundation

class Console {
    public func printaEscrita(_ text: String) {
        let arr = Array.init(text)
        
        for i in arr {
            usleep(100004)
           // usleep(20)
            print(i, terminator: "")
        }
        print("")
    }
    
    public func printaSimbolos(_ text: String) {
        let arr = Array.init(text)
        
        for i in arr {
            usleep(2000)
            print(i, terminator: "")
        }
        print("")
    }
    
    func repeatWhile(fala: String, opcao1: String, opcao2: String) -> String {
        var escolha: String
        var retorno: String = ""
        repeat {
            print("\(fala)")
            escolha = readLine()!
            if escolha == "1" {
                retorno = opcao1
            } else if escolha == "2" {
                retorno = opcao2
            } else {
                print("Digite uma opção válida.\n")
            }
        } while escolha != "1" && escolha != "2"
        
        return retorno
    }
}


