//
//  main.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Capitulo1 {
    
    let inicioJogo = InicioJogo()
    
    func capitulo1() {
        print("CAPÍTULO I - A terrível maldição")
        
    }
  
    
    private func printaEscrita(_ text: String) {
        let arr = Array.init(text)
        
        for i in arr {
            usleep(100001)
            print(i, terminator: "")
        }
        print("")
    }
}
