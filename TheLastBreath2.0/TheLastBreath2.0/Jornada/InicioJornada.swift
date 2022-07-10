//
//  InicioJornada.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 23/06/22.
//

import Foundation

class InicioJornada {
    
    func inicioJornada() {
        usaConsole.printaEscrita("""

No mesmo dia \(nomeJogador) e o duende Doodou partem em uma jornada contra o tempo para que pudessem achar um jeito de salvar Bryana.

- \(nomeJogador): Então Doodou nós vamos para o norte, você lembra do que Solveig disse, não é?

""")
        if jogador.inventario.verificaItem(nome: "Mapa") != nil {
            print("")
        } else {
            jogador.inventario.adicionarObjetos()
        }
        jogador.inventario.mostrarInventario(vetor: jogador.inventario.meuInventario)
        usaConsole.printaEscrita("""

- Doodou: Certo meu rapaz, você sabe o que encontraremos ao norte até chegarmos no nosso destino, não sabe? Existem animais mágicos que vivem no caminho até a Montanha de Elso.

- \(nomeJogador): Que animais?

- Doodou: Eu ja encontrei Hipogrifos e Elfos nesse caminho.

- \(nomeJogador): Ah sim entendi imagino que encontraremos muitos deles né.

- Doodou: Não duvide!

- \(nomeJogador): Aliás porque estamos indo para o norte?

- Doodou: Seu irmão acredita que devemos procurar as repostas com Grannus e as lendas dizem que ele tem um reino ao norte.

- \(nomeJogador): Certo!

""")
        
        var perguntaHipogrifo: String
        repeat {
            print("""

[1] O que é um Hipogrifo? ou [2] Continuar andando

""")
            perguntaHipogrifo = readLine()!
            if perguntaHipogrifo == "1" {
                hipogrifo()
            }
            
        } while perguntaHipogrifo != "1" && perguntaHipogrifo != "2"
        
        
        
        
        usaConsole.printaEscrita("""

- \(nomeJogador): Eiiii Doodou, estou vendo a montanha!!!

- Doodou: Estou com um mau pressentimento.

- \(nomeJogador): Estou vendo algo se mexendo nas árvores!!

- \(nomeJogador): Meu deus o que é isso??? É melhor essa espada ser bem afiada!

- Doodou: Eu não posso acreditar!! ISSO É MESMO O QUE ESTOU PENSANDO!!?

- \(nomeJogador): Doodou que tipo de bicho é esse?

- Doodou: O QUE VOCÊ ACHA?!?!? Isso meu jovem é Hipogrifo!

- \(nomeJogador): Ele está me olhando de cima a baixo sem reação o que eu faço Doodou? o que eu faço? Me ajudaaaaaaa...

- Doodou: Lembra do que eu disse ? Você precisa fazer uma reverência \(nomeJogador) para que eles possam ver se você tem alguma maldade!

""")
        var escolha2: String
        var retornoEspada = false
        repeat{
            print("[1] Ajoelhar-se e fazer a reverência ou [2] Pegar a espada")
            escolha2 = readLine()!
            
            if escolha2 == "1" {
                fazerReverencia()
            } else if escolha2 == "2"{
                retornoEspada = pegarEspada()
            } else {
                print("Digite uma opção válida.")
            }
        } while escolha2 != "1" && escolha2 != "2"
        
        if retornoEspada{
            return
        }
        
        print(" ")
        
        usaConsole.printaEscrita("""

- Doodou: \(nomeJogador) o Hipogrifo está mais calmo? Acho que tive uma ideia!

- \(nomeJogador): Acho que sei o que está pensando...

""")
        var escolhaHipogrifo: String
        
        repeat{
            print("- \(nomeJogador): [1] Usar o Hipogrifo para ir até o topo da montanha.")
            escolhaHipogrifo = readLine()!
        } while escolhaHipogrifo != "1"
        
        usaConsole.printaEscrita("""

- Doodou: Isso \(nomeJogador) era exatamente o que eu estava pensando!

- \(nomeJogador): Calma garoto, estou subindo!

- Doodou: HAHAHA EU NUNCA TINHA FEITO ISSO, UHUUUU VAMOS VOAR!!!!

- \(nomeJogador): Vamos garoto, leve a gente ao topo da montanha!!

- VUASHHHHHHHHH!!!!!

- Doodou: Olha!!! Estou vendo o Castelo de Grannus no topo, estamos chegando.

""")
        
        let escolhaCastelo = usaConsole.repeatWhile(fala: "- \(nomeJogador): [1] Vamos garoto, deixe a gente na frente do castelo! ou [2] Melhor descermos mais afastados, não sabemos o que nos espera.", opcao1: """

- \(nomeJogador): Vamos garoto, deixe a gente na frente do castelo!

- Doodou: Grannus vai ver a gente se formos bem na frente do castelo não acha? Está querendo morrer hoje? Porque eu não!!
""", opcao2: """

- \(nomeJogador): Melhor descermos mais afastados, não sabemos o que nos espera.

- Doodou: Você tem razão precisamos descer mais afastados e voltar andando
""")
        
        usaConsole.printaEscrita("""
\(escolhaCastelo)

- \(nomeJogador): Ótimo garoto, agora você está livre! Obrigado por nos ajudar!


Após uma pequena viagem até encontrarem um Hipogrifo \(nomeJogador) e seu duende Doodou chegam ao topo da montanha onde encontraram o Grannus, feiticeiro que amaldiçoou Bryana.


""")
        
        let finalJornada = FinalJornada()
        finalJornada.finalJornada()
    }
    
    func pegarEspada() -> Bool {
        var retornoBatalha: Bool
        
        usaConsole.printaEscrita("\nVocê irritou o Hipogrifo, prepare-se para lutar!\n")
        
        jogador.inventario.mostrarInventario(vetor: jogador.inventario.meuInventario)
        
        usaConsole.printaEscrita("""


- Hiprogrífo: GRRRUUUUUUWW!!!!!!

- \(nomeJogador): Doooodouuu, ELE TÁ VINDO PRA CIMA DE MIM!!!!

""")
        let combate02 = Combate02()
        retornoBatalha = combate02.combate02()
        
        return retornoBatalha 
    }
    
    func fazerReverencia() {
        usaConsole.printaEscrita("""

- Doodou: Bom garoto, fique tranquilo! Ele está apenas te analisando... mantenha-se calmo!

- Hiprogrífo: GRRRUUUUUUWW!!!!!!

- \(nomeJogador): Espera aí tem alguma coisa presa na pata dele!

- Doodou: É uma corrente, pegue sua espada e arrebente ela!

- TSSSSIIIIIIMMMM!!!!!!

- \(nomeJogador): Essa corrente é mágica, ela não vai quebrar tão facilmente!!

- Doodou: É uma corrente arqueana, para destruir é preciso descobrir a combinação da trava.

""")
        var segredoCorrente: String
        repeat {
            print("\nVocê precisa lembrar quem é o Mago poderoso que você está buscando para poder quebrar a corrente. Então se lembra quem está procurando?")
            print("\n[1] Grannus\n[2] Centrio\n[3] Solveig")
            segredoCorrente = readLine()!
        } while segredoCorrente != "1"
        
        usaConsole.printaEscrita("""

- Doodou: Ei, espera aí! Acabei de lembrar que tenho algo aqui na mochila que vai resolver isso!!

- Doodou: Isso é uma poção que seu pai me ensinou! Ela irá derreter a corrente e libertá-lo dessa prisão.

- \(nomeJogador): Doooodouuu, ele ta vindo pra cima de mim!!

- Doodou: Ele está agradecendo, acho que ele quer retribuir o favor!

- \(nomeJogador): Ele está deixando eu fazer carinho nele.

""")
    }
    
    func hipogrifo() {
        usaConsole.printaEscrita("""

- Doodou: Hipogrifos são criaturas mágicas que prezam o respeito e a única forma de evitar um ataque mortal desse animal, é mostrando que você tem boas intenções realizando uma reverência. Se o hipogrifo retribuir, é sinal de que você está seguro. Se não... bom você já pode imaginar!

- \(nomeJogador): Doodou você parece ser bem inteligente!

- Doodou: Não é atoa que eu sempre ajudava seu pai.

- \(nomeJogador): De onde você veio e como aprendeu tanta coisa?

- Doodou: Eu nasci numa vila de duendes muito antiga chamada Vila de Lovran, antes de você existir muito antes de muita coisa existir, nós duendes construímos muitas coisas com os magos e foi assim que conheci seu pai, ele era gênio desde quando o conheci ele queria trazer paz ao mundo através da magia!
Desde então eu vivi junto de seu pai para que pudéssemos ajudar o mundo a ser algo melhor do que é hoje, mas infelizmente tudo aquilo aconteceu... a morte dele.

""")
    }
}
