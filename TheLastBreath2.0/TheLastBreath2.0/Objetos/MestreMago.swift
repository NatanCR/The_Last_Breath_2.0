//
//  MestreMago.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 24/06/22.
//

import Foundation

class MestreMago {
    var nome: String
    var vida: Int
    var ataqueVingarceri: String
    var ataqueTenebris: String
    
    init(ataqueVingarceri: String, ataqueTenebris: String, nome: String, vida: Int) {
        self.ataqueVingarceri = ataqueVingarceri
        self.ataqueTenebris = ataqueTenebris
        self.nome = nome
        self.vida = vida
    }
    
    func ataqueVingarceri(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true{
            pontosDeAtaque = 50
        }
        return pontosDeAtaque
    }
    
    func ataqueTenebris(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true{
            pontosDeAtaque = 50
        }
        return pontosDeAtaque
    }
}
