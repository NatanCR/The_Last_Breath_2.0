//
//  Capitulo1.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class Capitulo1 {
    
    public func capitulo1() {
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
    
    init() { }
}
