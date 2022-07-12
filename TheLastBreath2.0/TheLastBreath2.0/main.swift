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
var jogador: Jogador
var usaConsole = Console()

repeat {
    usaConsole.printaEscrita("\nVocê está pronto para conhecer o incrível mundo de The Last Breath?")
    print("\n[1] - Com certeza!  \n[2] - Não estou preparado...")
    pronto = readLine()!
    if pronto == "1" {
        usaConsole.printaEscrita("Diga-me seu nome...")
        nomeJogador = readLine()!
        jogador = .init(nome: nomeJogador, vida: 100, inventario: FuncoesInventario.init(meuInventario: []), nomeAtaque01: "Corte com espada!", nomeAtaque02: "Feitiço retardatário!", nomeAtaque03: "Defender com espada!")
        usaConsole.printaEscrita("\nPerfeito, fique sabendo que é um caminho sem volta!")
        menu.menuJogo()
    }else if pronto == "2" {
        usaConsole.printaEscrita("\nNão se engane, você não tem muita escolha... Abrace o destino!")
    } else {
        print("Digite uma opção válida!")
    }
    
} while pronto != "1"
