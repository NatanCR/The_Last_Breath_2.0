//
//  FinalJornada.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class FinalJornada {
    
    public func finalJornada() {
        usaConsole.printaEscrita("""

- Chegada no Castelo de Grannus -


CAPÍTULO FINAL - O segredo é revelado


- Doodou: Você está pronto \(nomeJogador)?

""")
        let escolhaPronto = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Estou pronto! ou [2] Ele vai pagar pelo o que fez!", opcao1: "\n- \(nomeJogador): Estou pronto!", opcao2: "\n- \(nomeJogador): Ele vai pagar pelo o que fez!")
        
        usaConsole.printaEscrita("""
\(escolhaPronto)

- Doodou: Muito bem precisamos seguir em frente! Vamos descobrir como salvar sua irmã e acabar com tudo isso.

- Doodou: Vamos entrar por trás pra ele não ver a gente.

- Doodou: Tome essa pílula de comida, vai renovar suas energias!

""")
        var escolhaPilula: String
        
        repeat {
            print("- \(nomeJogador): [1] Aceitar ou [2] Recusar")
            escolhaPilula = readLine()!
            if escolhaPilula == "1" {
                jogador.vida = 100
                print("\nVida \(nomeJogador): \(jogador.vida)")
            } else if escolhaPilula == "2" {
                jogador.vida = 90
                print("\nVida \(nomeJogador): \(jogador.vida)")
            } else {
                print("\nDigite uma opção válida.")
            }
        } while escolhaPilula != "1" && escolhaPilula != "2"
        
        
        usaConsole.printaEscrita("""

- \(nomeJogador): Certo vamos andando!

- Doodou: Que estranho não há guardas e não vejo ninguém.

""")
        let escolhaFala1 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Ele deve ser muito convencido mesmo. ou [2] Isso pode ser uma armadilha!", opcao1: "\n- \(nomeJogador): Ele deve ser muito convencido mesmo.", opcao2: "\n- \(nomeJogador): Isso pode ser uma armadilha!")
        
        usaConsole.printaEscrita("""
\(escolhaFala1)

- Doodou: Você pode estar certo! Tenha cuidado!!!

- \(nomeJogador): Eu acho que estou vendo a entrada, vamos!!

- Doodou: \(nomeJogador) ESPEREEE!!! [...] Ah droga isso não é nada bom!!!

- \(nomeJogador): EU FINALMENTE ENCONTREI VOCÊ!!!!!!!!!

SINTA A FÚRIA ... DA MINHA ESPADA!!!!!!

- Grannus: Mas o que...!!! Você tem muita coragem criança!!


\(nomeJogador) encontra Grannus e o ataca com sua espada na primeira chance que tem para pega-lo de supresa, mas o que \(nomeJogador) não sabe é como Grannus se tornou mais forte depois de tantos anos...


- Doodou: \(nomeJogador) não ataque sem uma estratégia e não se esqueça com que estamos lidando!


Eles se entreolharam... \(nomeJogador) estava carregado de lembranças, de uma luta que ficou no passado, mas ainda marcava o presente. A intensa magia de Grannus fazia o clima ficar denso e sombrio, mas \(nomeJogador) levantou sua espada e se preparou para o combate...
Estavam um de frente para o outro, até que Grannus resolveu se pronunciar:


- Grannus: Eu sabia que vocês viriam atrás de mim! Mas para que? Para morrer igual seu pai miserável? Se veio me matar, vai precisar muito mais que uma espada e um duende HAHAHAHAHA!!!!

""")
        
        let escolhaFala2 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Você foi covarde matando meu pai enquanto ele estava fraco! ou [2] Você vai pagar por tudo que fez cretino!", opcao1: "\n- \(nomeJogador): Você foi covarde matando meu pai enquanto ele estava fraco!", opcao2: "\n- \(nomeJogador): Você vai pagar por tudo que fez cretino!")
        
        
        usaConsole.printaEscrita("""
\(escolhaFala2)

- Grannus: Você é aquela criança? Ah sim eu devo estar certo, eu lembro de você naquele dia!

No dia em que eu salvei a sua vida e o levei para casa em segurança! Eu cuidei de você enquanto seu pai não podia nem levantar da cama, de você e dos seus irmãos, fracos!

""")
        let escolhaFala3 = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Então se lembra de mim sabe porque eu estou aqui! ou [2] Eu vim acabar com a maldição que você jogou na minha irmã!", opcao1: "\n- \(nomeJogador): Então se lembra de mim sabe porque eu estou aqui!", opcao2: "\n- \(nomeJogador): Eu vim acabar com a maldição que você jogou na minha irmã!")
        
        usaConsole.printaEscrita("""
\(escolhaFala3)

- Grannus: HAHAHA você sabe o que vai precisar fazer para conseguir isso não sabe?


Grannus ainda levado pelo feitiço lançado sobre ele, olha com desprezo e ódio para \(nomeJogador) enquanto Doodou pensa uma estratégia para derrotar o Grannus.


- \(nomeJogador): Eu vou vencê-lo custe o que custar! Doodou o que vamos fazer?

- Doodou: Aqui pegue isso e jogue na frente dele!!!

""")
        
        let escolhaFinal = escolhaFinal()
        
        if escolhaFinal == "1" {
            let batalhaFinal1 = BatalhaFinal1()
            batalhaFinal1.batalhaFinal1()
        } else if escolhaFinal == "2" {
            let batalhaFinal2 = BatalhaFinal2()
            batalhaFinal2.batalhaFinal2()
        }
    }
    
    func escolhaFinal() -> String{
        var escolhaFinal: String
        repeat {
            print("[1] Jogar poção ou [2] Atacar com a espada")
            escolhaFinal = readLine()!
            if escolhaFinal != "1" && escolhaFinal != "2" {
                print("Digite uma opção válida.")
            }
        } while escolhaFinal != "1" && escolhaFinal != "2"
        return escolhaFinal
    }
}
