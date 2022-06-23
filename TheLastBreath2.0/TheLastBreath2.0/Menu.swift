//
//  main.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class Menu{
    
    let inicioJogo = InicioJogo()
    
    func menuJogo(){
        let espaco = "                              "
        var escolhaMenu: String = ""
        printaEscrita("\n\n\n\n\n\n\n\n\n")
        printaEscrita2("\n\n" +
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
        printaEscrita("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        
        repeat {
            
            print("\n[1] - Jogar \n[2] - Instruções \n[3] - Créditos \n[4] - Conhecer Personagens \n[5] - Sair")
            escolhaMenu = readLine()!
            
            switch escolhaMenu {
            case "1":
                inicioJogo.entrada()
            case "2":
                print("\nO jogo é um modelo RPG textual e você terá decisões a tomar durante o decorrer da história, mas preste atenção pois dependendo da sua escolha o jogo pode ter um final diferente do outro. Escolha com sabedoria e bom jogo!")
            case "3":
                print("\nEste jogo foi desenvolvido e produzido por Natan Camargo Rodrigues.")
            case "4":
                mostraPersonagens()
            case "5":
                print("\nVocê saiu do jogo.")
                break
            default:
                print("\nDigite um valor válido.")
            }
        } while escolhaMenu != "5"
    }
    
    func mostraPersonagens() -> [Personagem] {
        print("\nNão se apegue a eles, podem acabar não sobrevivendo até o final do jogo...")
        let personagensJogo = Personagem(nome: ["Mestre dos Magos", "Centrion", "Grannus", "Solveig", "Bryana", "Doodou", "Player"], descricao: ["Mago supremo do universo.", "Mago irmão do Mestre dos Magos, que foi corrompido pela fome de poder ao longo dos anos.", "Mago aprendiz do Mestre dos Magos.", "Filho mais velho do Mestre dos Magos e futuro feiticeiro.", "Irmã mais nova de Solveig.", "Duende verde amigo do Mestre dos Magos que o acompanhou durante longos anos de jornada.", "Filho adotivo que foi perdido pelos pais durante uma destruição causada na sua cidade por dois magos."])
        
        for i in 0..<personagensJogo.nome.count {
            print("\nNome: \(personagensJogo.nome[i])\nDescrição: \(personagensJogo.descricao[i])")
        }
        return [personagensJogo]
    }
    
    private func printaEscrita(_ text: String) {
        let arr = Array.init(text)
        
        for i in arr {
            usleep(100001)
            print(i, terminator: "")
        }
        print("")
    }
    
    private func printaEscrita2(_ text: String) {
        let arr = Array.init(text)
        
        for i in arr {
            usleep(4000)
            print(i, terminator: "")
        }
        print("")
    }
}

struct Personagem {
    var nome: [String]
    var descricao: [String]
}
