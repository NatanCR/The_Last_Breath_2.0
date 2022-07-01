//
//  Grannus.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 01/07/22.
//

import Foundation

class Grannus {
    var nome: String
    var vida: Int
    var ataqueRevidus: String
    
    init(ataqueRevidus: String, nome: String, vida: Int){
        self.ataqueRevidus = ataqueRevidus
        self.vida = vida
        self.nome = nome
    }
    
    func ataqueRevidus(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true{
            pontosDeAtaque = 20
        }
        return pontosDeAtaque
    }
}
