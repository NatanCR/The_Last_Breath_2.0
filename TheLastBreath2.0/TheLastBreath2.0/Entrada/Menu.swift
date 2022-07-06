//
//  Menu.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 21/06/22.
//

import Foundation

public class Menu{
    
    public func menuJogo() {
        let inicioJogo = InicioJogo()
        let espaco = "                              "
        var escolhaMenu: String = ""
        
        usaConsole.printaEscrita("\n\n\n\n\n\n\n\n\n")
        usaConsole.printaSimbolos("\n\n" +
                                  "\n\(espaco)█████████████████████████████████████████████████████████████████████████████████████████████████████████████" +
                                  "\n\(espaco)█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░████░░░░░░█████████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█" +
                                  "\n\(espaco)█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█" +
                                  "\n\(espaco)█░░░░░░▄▀░░░░░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░████░░▄▀░░█████████░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░░░░░▄▀░░░░░░█" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░████████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░████░░▄▀░░█████████░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░████░░▄▀░░█████████░░▄▀░░░░░░▄▀░░█░░░░░░░░░░▄▀░░█████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░████████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████████░░▄▀░░█████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░████░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█░░░░░░░░░░▄▀░░█████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████" +
                                  "\n\(espaco)█████░░░░░░█████░░░░░░██░░░░░░█░░░░░░░░░░░░░░████░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░█████░░░░░░█████" +
                                  "\n\(espaco)█████████████████████████████████████████████████████████████████████████████████████████████████████████████" +
                                  "\n\(espaco)█████████████████████████████████████████████████████████████████████████████████████████████████" +
                                  "\n\(espaco)█░░░░░░░░░░░░░░███░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█" +
                                  "\n\(espaco)█░░▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀░░░░░░▄▀░░███░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░░░░░▄▀░░░░░░█░░▄▀░░██░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀░░██░░▄▀░░███░░▄▀░░████░░▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀░░░░░░▄▀░░░░█░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█" +
                                  "\n\(espaco)█░░▄▀░░░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀░░████░░▄▀░░█░░▄▀░░██░░▄▀░░█████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀░░░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█" +
                                  "\n\(espaco)█░░▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█" +
                                  "\n\(espaco)█░░░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░█████░░░░░░█████░░░░░░██░░░░░░█" +
                                  "\n\(espaco)█████████████████████████████████████████████████████████████████████████████████████████████████")
        usaConsole.printaEscrita("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        
        repeat {
            
            print("\n[1] - Jogar \n[2] - Instruções \n[3] - Créditos \n[4] - Conhecer Personagens \n[5] - Sair")
            escolhaMenu = readLine()!
            
            switch escolhaMenu {
            case "1":
                inicioJogo.entrada()
            case "2":
                usaConsole.printaEscrita("\nO jogo é um modelo RPG textual e você terá decisões a tomar durante o decorrer da história, mas preste atenção pois dependendo da sua escolha o jogo pode ter um final diferente do outro. Escolha com sabedoria e bom jogo!")
            case "3":
                creditos()
            case "4":
                mostraPersonagens()
            case "5":
                print("\nVocê saiu do jogo.")
                break
            default:
                print("\nDigite uma opção válido.")
            }
        } while escolhaMenu != "5"
    }
    
    private func mostraPersonagens() -> [PersonagensJogo] {
        usaConsole.printaEscrita("\nNão se apegue a eles, podem acabar não sobrevivendo até o final do jogo...")
        
        let personagensJogo = PersonagensJogo(nome: ["Mestre dos Magos", "Centrion", "Grannus", "Solveig", "Bryana", "Doodou", "Player"], descricao: ["Mago supremo do universo.", "Mago irmão do Mestre dos Magos, que foi corrompido pela fome de poder ao longo dos anos.", "Mago aprendiz do Mestre dos Magos.", "Filho mais velho do Mestre dos Magos e futuro feiticeiro.", "Irmã mais nova de Solveig.", "Duende verde amigo do Mestre dos Magos que o acompanhou durante longos anos de jornada.", "Filho adotivo que foi perdido pelos pais durante uma destruição causada na sua cidade por dois magos."])
        
        for i in 0..<personagensJogo.nome.count {
            print("\nNome: \(personagensJogo.nome[i])\nDescrição: \(personagensJogo.descricao[i])")
        }
        return [personagensJogo]
    }
    
    public func creditos() {
        usaConsole.printaEscrita("\nEste jogo foi desenvolvido e produzido por Natan Camargo Rodrigues.")
    }
    
    init() { }
}

struct PersonagensJogo {
    var nome: [String]
    var descricao: [String]
}
