//
//  Capitulo2.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Capitulo2 {
    
    func capitulo2() {
        escritaConsole.printaEscrita("""



CAPÍTULO II - Uma jornada inesperada.


Ao completar 17 anos, Bryana começa a receber sinais de que seu tempo de vida está acabando. Seu meio irmão \(nomeJogador) percebe esses acontecimentos e conta para seu irmão mais velho, Solveig desesperado para salvar sua irmã busca soluções em livros antigos de seu pai para que talvez encontre algo que possa ajudá-los enquanto \(nomeJogador) vai em busca da cura.



""")
        var escolha1: String
        
        repeat{
            print("""
- Solveig: Meu irmão, nós não temos escolha. Você precisa ir atrás do Grannus e descobrir um jeito de curar Bryana.

[1] Eu trarei a cura junto comigo!! ou [2] Bryana precisa aguentar por mais tempo!

""")
            escolha1 = readLine()!
            
            if escolha1 == "1" {
                escritaConsole.printaEscrita("Eu trarei a cura junto comigo!!")
            } else if escolha1 == "2" {
                escritaConsole.printaEscrita("Bryana precisa aguentar por mais tempo!")
            } else {
                print("Escolha uma opção válida.")
            }
            
        } while escolha1 != "1" && escolha1 != "2"
        
        escritaConsole.printaEscrita("""

- Solveig: Eu estou buscando alguma fórmula ou feitiço nos livros do nosso pai para tentar retardar o tempo dela para que você tenha mais tempo e consiga achar o Grannus, mas até hoje nada do que eu tentei funcionou...

- \(nomeJogador): Você já sabia que esse dia chegaria, não é mesmo?

- Solveig: Eu cometi erros, meu querido irmão, deveria ter contado sobre essa maldição para vocês, mas não queria que isso mudasse a vida dela e nem a sua!

- \(nomeJogador): Então todos aqueles livros e todos aqueles treinos era pra quando esse dia chegasse...

- Solveig: Sim \(nomeJogador)!! Me perdoe, eu fiz o melhor que pude!

""")
        
        var escolha2: String
        
        repeat{
            print("""
[1] Você deveria ter nos contado!! ou [2] Você sempre cuidou de nós e eu sou grato por isso!!

""")
            escolha2 = readLine()!
            
            if escolha2 == "1" {
                escritaConsole.printaEscrita("\nVocê deveria ter nos contado!!")
            } else if escolha2 == "2" {
                escritaConsole.printaEscrita("\nVocê sempre cuidou de nós e eu sou grato por isso!!")
            } else {
                print("Escolha uma opção válida.")
            }
        } while escolha2 != "1" && escolha2 != "2"
        
        escritaConsole.printaEscrita("""

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
                escritaConsole.printaEscrita("- \(nomeJogador): Obrigado meu irmão!")
                if jogador.inventario.verificaItem(nome: "Armadura de Prata") != nil {
                    print("")
                } else {
                    jogador.inventario.salvarInventario(tituloObjeto: "Armadura de Prata", descricaoObjeto: "Armadura forjada pelos Reis da Montanha dos Anões", quantidade: 1)
                }
                jogador.inventario.mostrarInventario(vetor: jogador.inventario.meuInventario)
                inicioJornada.inicioJornada()
            } else if escolhaArmadura == "2" {
                escritaConsole.printaEscrita("- \(nomeJogador): Acho que não vou precisar Solveig, mas agradeço sua preocupação!")
                inicioJornada.inicioJornada()
            } else {
                print("Escolha uma opção válida.")
            }
        } while escolhaArmadura != "1" && escolhaArmadura != "2"
    }
}
