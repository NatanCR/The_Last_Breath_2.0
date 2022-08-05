//
//  BatalhaFinal2.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 30/06/22.
//

import Foundation

class BatalhaFinal2 {
    public func batalhaFinal2() {
        let grannus = Personagem(nome: "Grannus", vida: 100, nomeAtaque01: "CRUENTOS PASSOS!!")
        
        usaConsole.printaEscrita("""

- \(nomeJogador): Certo! AAAARRRGG TOME ISSO!!!!!!!

""")
        
        grannus.vida -= jogador.ataque(dano: 50, atacar: true)
        print("Vida Grannus: \(grannus.vida)")
        
        usaConsole.printaEscrita("""
\(fumacaTxt)
- Grannus: \(grannus.nomeAtaque01)

""")
        
        jogador.vida -= jogador.ataque(dano: 30, atacar: true)
        
        usaConsole.printaEscrita("\(primeiroDefesaTxt)")
        
        let fala1 = usaConsole.repeatWhile(fala: "[1] Golpear Grannus no peito [2] Cortar a cabeça de Grannus", opcao1: "\n- \(nomeJogador): AAAAH EU VOU ACABAR COM VOCÊ!!!!!", opcao2: "\n- \(nomeJogador): AAAAH EU VOU ACABAR COM VOCÊ!!!!!")
        
        grannus.vida -= jogador.ataque(dano: 50, atacar: true)
        
        usaConsole.printaEscrita("""
\(fala1)

    Vida Grannus: \(grannus.vida)

\(segundoFinalHistoriaTxt)
""")
    }
}
