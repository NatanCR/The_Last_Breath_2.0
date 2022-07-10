//
//  Combate01.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Combate01 {
    
    let mestreDosMagos = MestreMago(ataqueVingarceri: "VINGARCERI - (traz a vingança dos movimentos do inimigo)", ataqueTenebris: "TENEBRIS MORTIS - (causa uma morte terrível ao inimgo)", nome: "Mestre dos Magos", vida: 100)
    let centrion = Centrion(ataqueRevidus: "REVIDUS", nome: "Centrion", vida: 100)
    
    func combate01() {
        print("\n\nPersonagem: \(mestreDosMagos.nome)")
        print("Ataques: \n[1]\(mestreDosMagos.ataqueTenebris)\n[2]\(mestreDosMagos.ataqueVingarceri)")
        print("Vida: \(mestreDosMagos.vida)")
        
        var escolhaAtaque: String
        
        repeat {
            print("\nEscolha seu ataque: ")
            escolhaAtaque = readLine()!
            
            if escolhaAtaque == "1" {
                print(mestreDosMagos.ataqueTenebris)
                centrion.vida -= mestreDosMagos.ataqueTenebris(atacar: true)
                print("\nVida Centrion: \(centrion.vida)")
                
            } else if escolhaAtaque == "2" {
                print(mestreDosMagos.ataqueVingarceri)
                centrion.vida -= mestreDosMagos.ataqueVingarceri(atacar: true)
                print("\nVida Centrion: \(centrion.vida)")
            }
        } while escolhaAtaque != "1" && escolhaAtaque != "2"
        
        
        usaConsole.printaEscrita("\n\n- Grannus: MESTRE!! Lembra daquele feitiço que você me ensinou?")
        print("\n- Centrion: \(centrion.ataqueRevidus)")
        mestreDosMagos.vida -= centrion.ataqueRevidus(atacar: true)
        print("\nVida Mestre dos Magos: \(mestreDosMagos.vida)")
        
        usaConsole.printaEscrita("\n\n- Mestre dos magos: Você tem certeza que isso vai funcionar? Irei confiar nos seus sentidos, meu jovem aprendiz!")
        
        print("\n\nPersonagem: \(mestreDosMagos.nome)")
        print("Ataques: \n[1]\(mestreDosMagos.ataqueTenebris)\n[2]\(mestreDosMagos.ataqueVingarceri)")
        print("Vida: \(mestreDosMagos.vida)")
        
        repeat {
            print("\nEscolha seu ataque: ")
            escolhaAtaque = readLine()!
            
            if escolhaAtaque == "1" {
                print(mestreDosMagos.ataqueTenebris)
                centrion.vida -= mestreDosMagos.ataqueTenebris(atacar: true)
                print("\nVida Centrion: \(centrion.vida)")
            } else if escolhaAtaque == "2" {
                print(mestreDosMagos.ataqueVingarceri)
                centrion.vida -= mestreDosMagos.ataqueVingarceri(atacar: true)
                print("\nVida Centrion: \(centrion.vida)")
            }
        } while escolhaAtaque != "1" && escolhaAtaque != "2"
        
        usaConsole.printaEscrita("\nO tempo se fecha, nuvens escuras se formam em cima dos magos e o poder do feitiço caí sobre Centrion, o inimigo mesmo derrotado ainda não desistiu da luta e deseja vingança…")
    }
}
