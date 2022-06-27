//
//  main.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 14/06/22.
//

import Foundation

let menu = Menu()
var pronto: String

repeat {
    print("\nVocê está pronto para conhecer o incrível mundo de The Last Breath?")
    print("\n[1] - Com certeza!  \n[2] - Não estou preparado...")
    pronto = readLine()!
    if pronto == "1" {
        print("\nPerfeito, fique sabendo que é um caminho sem volta!")
        menu.menuJogo()
    }else if pronto == "2" {
        print("\nNão se engane, você não tem muita escolha... Abrace o destino!")
    } else {
        print("Escolha uma opção válida!")
    }

} while pronto != "1"



private func printAsWritten(_ text: String) {
    let arr = Array.init(text)
    
    for i in arr {
        usleep(100001)
        print(i, terminator: "")
    }
    print("")
}
