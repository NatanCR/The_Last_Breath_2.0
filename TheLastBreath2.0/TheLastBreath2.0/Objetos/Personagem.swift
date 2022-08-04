//
//  Personagem.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 11/07/22.
//


import Foundation

class Personagem {
    var nome : String
    var vida : Int
    var nomeAtaque01: String
    
    init(nome: String, vida: Int, nomeAtaque01: String){
        self.nome = nome
        self.vida = vida
        self.nomeAtaque01 = nomeAtaque01
    }
    
    func ataque(dano: Int, atacar: Bool) -> Int {
        var valorDano = 0
        if atacar == true{
            valorDano = dano
        }
        return valorDano
    }
}
