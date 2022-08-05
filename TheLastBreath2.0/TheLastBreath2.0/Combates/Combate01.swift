//
//  Combate01.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Combate01 {
    
    let mestreMago = MestreMago(nome: "Mestre dos Magos", vida: 100, nomeAtaque01: "VINGARCERI - (traz a vingança dos movimentos do inimigo)", nomeAtaque02: "TENEBRIS MORTIS - (pode causar uma morte terrível ao inimgo)")
    let centrion = Personagem(nome: "Centrion", vida: 100, nomeAtaque01: "REVIDUS - (revida os ataques do oponente)")
    
    func combate01() {
        infoPersonagemAtaque()
        
        escolhaAtaque()
       
        print("\n- Centrion: \(centrion.nomeAtaque01)")
        mestreMago.vida -= centrion.ataque(dano: 50, atacar: true)
        print("\nVida Mestre dos Magos: \(mestreMago.vida)")
        
        usaConsole.printaEscrita("\n\n- Grannus: MESTRE!! Lembra daquele feitiço que você me ensinou?")
        usaConsole.printaEscrita("\n\n- Mestre dos magos: Você tem certeza que isso vai funcionar? Irei confiar nos seus sentidos, meu jovem aprendiz!")
        
        infoPersonagemAtaque()
        
        escolhaAtaque()
        
        usaConsole.printaEscrita("\nO tempo se fecha, nuvens escuras se formam em cima dos magos e o poder do feitiço caí sobre Centrion, o inimigo mesmo derrotado ainda não desistiu da luta e deseja vingança...\n")
    }
    
    private func infoPersonagemAtaque() {
        print("\n\nPersonagem: \(mestreMago.nome)")
        print("Ataques: \n[1]\(mestreMago.nomeAtaque01)\n[2]\(mestreMago.nomeAtaque02)")
        print("Vida: \(mestreMago.vida)")
    }
    
    private func escolhaAtaque() {
        var escolhaAtaque: String
        
        repeat {
            print("\nEscolha seu ataque: ")
            escolhaAtaque = readLine()!
            
            if escolhaAtaque == "1" {
                print(mestreMago.nomeAtaque01)
                centrion.vida -= mestreMago.ataque(dano: 50, atacar: true)
                print("\nVida Centrion: \(centrion.vida)")
                
            } else if escolhaAtaque == "2" {
                print(mestreMago.nomeAtaque02)
                centrion.vida -= mestreMago.ataque(dano: 50, atacar: true)
                print("\nVida Centrion: \(centrion.vida)")
            }
        } while escolhaAtaque != "1" && escolhaAtaque != "2"
    }
}
