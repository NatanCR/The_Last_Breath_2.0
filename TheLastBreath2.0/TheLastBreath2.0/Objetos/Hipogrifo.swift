//
//  Hipogrifo.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 28/06/22.
//

import Foundation

class Hipogrifo {
    var nome: String
    var vida: Int
    
    init(nome: String, vida: Int) {
        self.nome = nome
        self.vida = vida
    }
    
    func ataqueBicada(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true{
            pontosDeAtaque = 50
        }
        return pontosDeAtaque
    }
    
    func ataqueAsas(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true{
            pontosDeAtaque = 30
        }
        return pontosDeAtaque
    }
    
    func ataquePatas(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true{
            pontosDeAtaque = 30
        }
        return pontosDeAtaque
    }
}
