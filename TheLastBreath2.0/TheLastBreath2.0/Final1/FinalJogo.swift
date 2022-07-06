//
//  FinalJogo.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 01/07/22.
//

import Foundation

class FinalJogo {
    
    func finalJogo() {
        usaConsole.printaEscrita("""

- \(nomeJogador): Grannus vamos embora num Hipogrifo, ele é nosso amigo mas por via das dúvidas faça a reverência precisamos de você vivo!

- Grannus: UM HIPOGRIFO?? Só quero entender o que estamos fazendo!

- \(nomeJogador): Fique tranquilo, te explicaremos tudo no caminho!

IIIAAARRG

- Doodou: Lá vem ele!!

- \(nomeJogador): Muito bem garoto, precisamos da sua ajuda!

- Doodou: Vamos lá subam!


Enquanto o forte Hipogrifo leva-os para casa, Doodou e \(nomeJogador) contam tudo que Grannus precisava saber.


- Doodou: Olhem... estamos chegando!!!

- \(nomeJogador): [...] então Grannus resumindo nós precisamos que você liberte minha irmã da maldição que você lançou nela, meu irmão Solveig está com ela agora tentando encontrar um jeito de libertá-la.

- Grannus: Santo Merlim... eu não consigo acreditar que fiz isso! Eu cuidei daquela menina como uma irmã!

- Doodou: Não se culpe meu amigo, nós sabemos como Centrion era poderoso!

- Grannus: Eu sinto muito...

""")
        
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
        
        usaConsole.printaEscrita("""
\(fala2)

- Solveing: Vocês conseguiram?

- Grannus: Olá Solveing, a quanto tempo!

- Solveing: Ele ainda é o Grannus que matou nosso pai?

- Doodou: Não Solveing, nós tiramos o feitiço dele.

- \(nomeJogador): Vamos logo com isso, estamos perdendo tempo!

- Solveing: Meu irmão durante esses dias todos esperando pela sua volta eu busquei em livros e mais livros, eu tentei de tudo que pudesse ajudá-la mas nada do que eu fazia dava certo.\n Até que encontrei um livro antigo de magia oculta do nosso pai...

- Doodou: E o que tinha nele??? Vamos desembucha!!!!

- Solveing: Eu não sei se devemos falar sobre isso na presença dele!

""")
        
        var escolhaFala3: String
        repeat {
            print("- \(nomeJogador): [1] Revelar descoberta")
            escolhaFala3 = readLine()!
            
            if escolhaFala3 == "1" {
                print("")
            } else {
                print("\nEscolha uma opção válida.")
            }
        } while escolhaFala3 != "1"
        
        usaConsole.printaEscrita("""

- \(nomeJogador): Pode contar, ele veio para nos ajudar!

- Solveing: Muito bem, o livro dizia que maldições lançadas por magos poderosos só podem ser quebradas se ou quando eles morrerem!

... o silêncio tomou conta da sala enquanto todos se olham e pensam em uma maneira de salvar Bryana.

- Grannus: EU ME SACRIFICO!!!

Depois dessa frase de Grannus, eles se reuniram e decidiram aceitar o desejo de salvar Bryana. Encontram o feitiço mais forte que teria piedade de Grannus e não o machucasse em sua partida, antes de ir Grannus se desculpou com Bryana por tudo que causou a ela e sua família… e então aceitou seu destino com um último suspiro.

IN PACE MORIERIS

A ira de Grannus era tão grande por ter feito tanta maldade a família que mais amava, que usou uma de suas magias mais poderosas contra ele mesmo, desintegrando sua alma por completo dando seu último suspiro. O ato de sacrifício de Grannus fez a maldição de Bryana desaparecer e restaurar as forças da jovem, tornando-a uma poderosa feiticeira.



...:::>>>FIM<<<:::...


.
.
.


Obrigado por jogar The Last Breath.

""")
    }
}
