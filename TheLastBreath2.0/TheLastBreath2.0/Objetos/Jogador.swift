//
//  Personagem.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Jogador: Personagem {
    var inventario: FuncoesInventario
    var nomeAtaque02: String
    var nomeAtaque03: String
    
    init(nome: String, vida: Int, inventario: FuncoesInventario, nomeAtaque01: String, nomeAtaque02: String, nomeAtaque03: String) {
        self.inventario = inventario
        self.nomeAtaque02 = nomeAtaque02
        self.nomeAtaque03 = nomeAtaque03
        super.init(nome: nome, vida: vida, nomeAtaque01: nomeAtaque01)
    }
    
}
