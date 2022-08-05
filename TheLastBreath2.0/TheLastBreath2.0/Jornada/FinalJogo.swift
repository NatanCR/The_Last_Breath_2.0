//
//  FinalJogo.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 01/07/22.
//

import Foundation

class FinalJogo {
    
    func finalJogo() {
        usaConsole.printaEscrita("\(voltaParaCasaTxt)")
        
        let fala1 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Você vai poder se desculpar quando salvar a minha irmã! ou [2] Se não salvarmos ela hoje, ela morrerá à meia noite.", opcao1: "\n- \(nomeJogador): Você vai poder se desculpar quando salvar a minha irmã!", opcao2: "\n- \(nomeJogador): Se não salvarmos ela hoje, ela morrerá à meia noite.")
        
        usaConsole.printaEscrita("""
\(fala1)

- Doodou: Já estou vendo a casa, vamos lá garoto mais rápido!

- Doodou: Chegamos! Estamos em casa!

""")
        let fala2 = usaConsole.repeatWhile(fala: "[1] Chamar Solveing ou [2] Entrar na casa", opcao1: """

- \(nomeJogador): Solveing chegamos!! Está em casa?

- Solveing: Graças a Merlim vocês voltaram!!

- \(nomeJogador): Estamos aqui meu querido irmão e trago boas notícias!

""", opcao2: """

- \(nomeJogador): Está tudo muito calmo, vamos entrar! Hipogrifo, agora você está livre, adeus meu amigo, obrigado por tudo! Vamos Grannus...

- Solveing: Força Bryanna, preciso que fique forte! tentarei uma nova magia...

Espera ai que barulho é esse?

Graças a Merlim vocês voltaram!!

- \(nomeJogador): Estamos aqui meu querido irmão e trago boas notícias!

""")
        
        usaConsole.printaEscrita("\(fala2)\n\(encontraSolveigTxt)")
        
        var escolhaRevelar: String
        repeat {
            print("- \(nomeJogador): [1] Revelar descoberta")
            escolhaRevelar = readLine()!
            
            if escolhaRevelar == "1" {
                print("")
            } else {
                print("\nEscolha uma opção válida.")
            }
        } while escolhaRevelar != "1"
        
        usaConsole.printaEscrita("\(finalHistoriaTxt)")
    }
}
