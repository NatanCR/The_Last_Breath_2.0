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
            usleep(100001)
            print(i, terminator: "")
        }
        print("")
    }
}


