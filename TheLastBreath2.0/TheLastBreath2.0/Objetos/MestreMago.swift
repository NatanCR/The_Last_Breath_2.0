//
//  MestreMago.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 24/06/22.
//

import Foundation

class MestreMago: Personagem {
    var nomeAtaque02: String

    init(nome: String, vida: Int, nomeAtaque01: String, nomeAtaque02: String) {
        self.nomeAtaque02 = nomeAtaque02
        super.init(nome: nome, vida: vida, nomeAtaque01: nomeAtaque01)
    }
    
}
