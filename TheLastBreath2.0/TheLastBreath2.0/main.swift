//
//  main.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 14/06/22.
//

import Foundation

let menu = Menu()
var pronto: String
var nomeJogador: String
var jogador: Personagem
var escritaConsole = Console()

repeat {
    escritaConsole.printaEscrita("\nVocê está pronto para conhecer o incrível mundo de The Last Breath?")
    print("\n[1] - Com certeza!  \n[2] - Não estou preparado...")
    pronto = readLine()!
    if pronto == "1" {
        escritaConsole.printaEscrita("Diga-me seu nome...")
        nomeJogador = readLine()!
        jogador = Personagem(nome: nomeJogador, vida: 100, inventario: FuncoesInventario.init(meuInventario: []))
        escritaConsole.printaEscrita("\nPerfeito, fique sabendo que é um caminho sem volta!")
        menu.menuJogo()
    }else if pronto == "2" {
        escritaConsole.printaEscrita("\nNão se engane, você não tem muita escolha... Abrace o destino!")
    } else {
        print("Digite uma opção válida!")
    }
    
} while pronto != "1"
