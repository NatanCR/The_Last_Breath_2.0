//
//  Hipogrifo.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 28/06/22.
//

import Foundation

class Hipogrifo: Personagem {
    var nomeAtaque02: String
    var nomeAtaque03: String
    
    init(nome: String, vida: Int, nomeAtaque01: String, nomeAtaque02: String, nomeAtaque03: String){
        self.nomeAtaque02 = nomeAtaque02
        self.nomeAtaque03 = nomeAtaque03
        super.init(nome: nome, vida: vida, nomeAtaque01: nomeAtaque01)
    }

}
