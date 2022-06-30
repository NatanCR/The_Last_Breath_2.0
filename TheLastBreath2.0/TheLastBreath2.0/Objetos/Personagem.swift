//
//  Personagem.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Personagem: Jogador {
    var nome: String
    var vida: Int
    var inventario: FuncoesInventario
    
    init(nome: String, vida: Int, inventario: FuncoesInventario) {
        self.nome = nome
        self.vida = vida
        self.inventario = inventario
    }
    
    var nomeJogador: String {
        return nome
    }
    
    var vidaJogador: Int {
        return vida
    }
    
    func ataqueEspada(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true {
            pontosDeAtaque = 40
        }
        return pontosDeAtaque
    }
    
    func ataqueFeitico(atacar: Bool) -> Int {
        var pontosDeAtaque: Int = 0
        if atacar == true {
            pontosDeAtaque = 30
        }
        return pontosDeAtaque
    }
    
    func defesa(defender: Bool) -> Int {
        var pontosDeDefesa: Int = 0
        if defender == true {
            pontosDeDefesa = 10
        }
        return pontosDeDefesa
    }
}

protocol Jogador {
    var nome: String { get }
    var vida: Int { get }
}
