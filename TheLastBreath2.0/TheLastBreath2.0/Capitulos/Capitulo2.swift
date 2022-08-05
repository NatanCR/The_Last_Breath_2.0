//
//  Capitulo2.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Capitulo2 {
    
    func capitulo2() {
        usaConsole.printaEscrita("\(entradaCapitulo02Txt)")
        
        let fala1 = usaConsole.repeatWhile(fala: """
- Solveig: Meu irmão, nós não temos escolha. Você precisa ir atrás do Grannus e descobrir um jeito de curar Bryana.

- \(nomeJogador): [1] Eu trarei a cura junto comigo!! ou [2] Bryana precisa aguentar por mais tempo!

""", opcao1: "- \(nomeJogador): Eu trarei a cura junto comigo!!", opcao2: "- \(nomeJogador): Bryana precisa aguentar por mais tempo!")
        
        usaConsole.printaEscrita("\(fala1) \n\(confissaoSolveigTxt)")
        
        let fala2 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Você deveria ter nos contado!! ou [2] Você sempre cuidou de nós e eu sou grato por isso!!", opcao1: "\n- \(nomeJogador): Você deveria ter nos contado!!", opcao2: "\n- \(nomeJogador): Você sempre cuidou de nós e eu sou grato por isso!!")
        
        usaConsole.printaEscrita("""
\(fala2)

- \(nomeJogador): Agora é melhor que eu parta antes do anoitecer, será uma longa jornada!

- Solveig: Esperee!!! Leve o Doodou, ele pode ser muito útil, mas tenha paciência, desde que o nosso pai morreu ele se tornou um ranzinza. Eu vou chama-lo.

- \(nomeJogador): Está bem, vou esperar por ele.

""")
        var escolhaArmadura: String
        
        repeat {
            print("""
- Solveig: Tome, leve essa armadura será muito útil a você!

[1] Pegar armadura ou [2] Recusar armadura

""")
            escolhaArmadura = readLine()!
            let inicioJornada = InicioJornada()
            
            if escolhaArmadura == "1" {
                usaConsole.printaEscrita("- \(nomeJogador): Obrigado meu irmão!")
                if jogador.inventario.verificaItem(nome: "Armadura de Prata") != nil {
                    print("")
                } else {
                    jogador.inventario.salvarInventario(tituloObjeto: "Armadura de Prata", descricaoObjeto: "Armadura forjada pelos Reis da Montanha dos Anões", quantidade: 1)
                }
                jogador.inventario.mostrarInventario()
                
                inicioJornada.inicioJornada()
            } else if escolhaArmadura == "2" {
                usaConsole.printaEscrita("- \(nomeJogador): Acho que não vou precisar Solveig, mas agradeço sua preocupação!")
                inicioJornada.inicioJornada()
            } else {
                print("Escolha uma opção válida.")
            }
        } while escolhaArmadura != "1" && escolhaArmadura != "2"
    }
}
