//
//  Capitulo1.swift
//  NanoChallenge6
//
//  Created by Natan Rodrigues on 22/06/22.
//

import Foundation

public class Capitulo1 {
    
    public func capitulo1() {
        print("""



CAPÍTULO I - A terrível maldição

Um homem conhecido como Mestre dos Magos e seu aprendiz Grannus viajam à procura de suprimentos para fabricação de novas poções. Durante essa jornada, ao chegar em uma vila vizinha chamada Aghoo, encontram Centrion, o irmão mais novo do Mestre dos Magos, que foi corrompido por sua fome de poder e conhecimento ao longo dos anos.

- Centrion: Ora ora quem está aqui… quanto tempo meu irmão!!

- Mestre dos Magos: Centrion, você não pode machucar essas pessoas!!

- Mestre dos Magos: Vamos para casa comigo e conversaremos lá!

- Centrion: Irmão… você sabe que não temos nada para conversar!

- Mestre dos magos: Grannus, preciso de sua ajuda para levar essas pessoas para um local seguro, EU VOU ENFRENTAR MEU IRMÃO E ACABAR COM ISSO DE UMA VEZ POR TODAS!

- Aprendiz (Grannus) : Entendido mestre, assim que eu conseguir levar todos em segurança volto para te ajudar! [...] Por aqui crianças, vou levá-las para um lugar seguro!

Grannus reúne todos os cidadãos da cidade que estavam perto do local onde os dois magos mais poderosos estavam prontos para iniciar uma batalha até a morte, ele os leva para longe e se apressa para poder ajudar seu mestre o mais rápido possível.

- Centrion: Eu precisava de algo para chamar sua atenção! Eu tinha que ter certeza de que você estaria aqui.

- Mestre dos magos: O que você pretende fazer com tudo isso?

- Centrion: Eu quero tirar de você o que me pertence!! Seus poderes nunca foram seus!!


""")
        print("[1] - Descobrir o que Centrion quis dizer \n[2] - Continuar história.")
        let centrion: String = readLine()!
        
        if centrion == "1" {
            historiaCentrion()
        }
        
        print("""

- Mestre dos magos: Centrion você não é páreo para mim!

- Mestre dos magos: Você sabe quem sou e sabe dos meus poderes, mesmo sendo meu irmão não vou permitir que machuque ninguém!

Então, uma batalha intensa é travada entre os dois magos poderosos! Uma hora de batalha se passou e muitos danos foram causados no centro de Aghoo e no meio dos destroços uma criança sozinha e indefesa é vista tentando se esconder… O Aprendiz volta para tentar ajudar seu mestre.

- Mestre dos magos: GRANNUS leve essa criança daqui!! Eu vou terminar essa luta sozinho! CENTRIONNNNN!!!! Eu devia ter acabado com você no passado, mas não tem problema eu acabo com você agora!!!

""")
        print("\n...::: COMBATE :::...")
        let combate01 = Combate01()
        
        combate01.combate01()
        
        print("""

- Centrion: Você venceu aqui meu irmão, mas essa batalha ainda não acabou!!

Então em seu último suspiro de vida, Centrion usou o que lhe restava de magia para lançar um feitiço sobre Grannus, o aprendiz do Mestre dos magos, fazendo com que ele seguisse todas as vontades de Centrion.”

- Centrion: SEQUITUR VESTIIGIA MEA!!!!

- Grannus: AAAARRGH!!!!!! O QUE VOCÊ FEEEEZ!!!!

- Mestre dos magos: ISSO ACABOU CENTRIONNN!!!

- Mestre dos magos: Grannus você está bem?

- Grannus: Acho que estou bem, não se preocupe comigo! Vamos levar essa criança daqui e voltar para casa!

Depois de uma dura batalha o Mestre dos magos e seu Aprendiz retornam para casa levando uma criança que perdeu seus pais nos destroços causados em Aghoo.

- Grannus: Mestre, o que faremos com essa criança?

- Mestre dos magos: Eu vou levá-lo comigo e cuidar dele, tenho certeza que ele se dará muito bem com meus filhos!

.:: 1 ANOS DEPOIS ::.

- Grannus: Mestre, eu trouxe mais um chá de verdilho pra você, isso tem te ajudado com o sua fraqueza. Por favor beba!

Após um ano daquela batalha entre Mestre dos Magos e seu irmão Centrion, Grannus passou a cuidar de seu mestre que ficou muito fraco e não conseguiu se recuperar dos danos que seu irmão lhe causou. Grannus, vendo seu mestre enfraquecido e tentando pelo feitiço jogado por Centrion, aproveita para matá-lo e assim tomar seus poderes.

Consumido pelo ódio lançado no feitiço de Centrion, antes de partir e Grannus amaldiçoou a amada filha de seu mestre a morrer quando completasse 18 anos de idade.

Após a morte de seu pai, o Mestre dos Magos, Solveig o filho mais velho leva seus irmãos para uma Vila que haviam visitado uma vez quando crianças onde seria seguro e que eles pudessem viver. Enquanto isso, Grannus celebrava seus novos poderes construindo seu reino sombrio em uma terra distante.

""")
        var escolha: String
        let capitulo2 = Capitulo2()
        
        repeat {
            print("""

- Solveig: \(nomeJogador) preciso lhe ensinar os conhecimentos que nosso pai tinha, para que um dia você possa se defender sozinho, você entende isso?

[1] Aprender os conhecimentos
[2] Ignorar Solveig

""")
            escolha = readLine()!
            
            switch escolha {
            case "1":
                print("""

- \(nomeJogador): Eu quero proteger nossa vila do homem que matou nosso Pai!! Mas não sei se conseguirei ser bom como você meu irmão.

- Solveig: Você será excelente \(nomeJogador), agora chame nossa irmã para que eu possa ensiná-los a como batalhar!

- \(nomeJogador): BRYANNAAAAAAA, ONDE ESTÁ VOCÊ?

- Bryana: Estou aqui, já estou indo!!

Durante sua juventude Solveig ensina seus irmãos mais novos a desenvolver habilidades e conhecimentos para que um dia eles pudessem juntos derrotar Grannus e livrar Bryana de sua maldição.

""")
                capitulo2.capitulo2()
            case "2":
                print("\n- \(nomeJogador): ... ('cri-cri')\n")
            default:
                print("Escolha uma opção válida!")
            }
        } while escolha != "1"
        
    }
    
    private func historiaCentrion() {
        print("""

Há muitos anos atrás, quando Centrion e seu irmão ainda eram jovens eles tinham um único sonho, tornar o mundo mágico em um lugar de paz onde nenhuma criatura seja ela mágica ou não pudesse viver em paz. Mas para isso eles sabiam que seria necessário por fim a prática da magia obscura, e para isso os dois irmãos teriam que aprender tudo sobre magia até mesmo sobre essa magia obscura e perigosa, famosa por corromper aqueles que com ela brincam ou tentam dominar.

Então um dia quando o homem que é hoje conhecido por Mestre dos Magos encontrou um livro muito antigo sobre magia escondido nas ruínas de um castelo longe de casa, nesse livro havia diversos feitiços e magias poderosas e ele acreditava que com esse livro seu irmão e ele poderiam mudar seu mundo.

Quando voltou pra casa, mostrou o livro para seu irmão Centrion que intrigado quis le-lo do começo ao fim… foram noites sem dormir até conseguir terminar o livro. Enquanto isso o irmão de Centrion estava treinando feitiços e poções que havia inventado durante sua jornada, por fim Centrion terminou o livro e disse:

- Centrion: Irmão, eu encontrei as repostas para nosso desejo!

- Mestre dos magos: E o que é?

- Centrion: É mais simples do que parece… mas um de nós pagará um preço caro pelo poder que iremos receber.

- Mestre dos magos: Eu não estou entendendo irmão.

- Centrion: Nós nunca conseguiremos estabelecer paz entre nosso povo se não obtivermos poder para isso! Precisamos de poder para destruir a magia oculta, mas para isso precisamos dela, temos que focar toda magia em um feitiço que irá acabar com toda obscuridade existente.”

- Mestre dos magos: E como acha que faremos isso?”

- Centrion: Um de nós… irá receber a magia oculta desse livro e assim terá poder para dominar a obscuridade e por fim lançar o feitiço que acabará com tudo.

Mas tem um preço, essa magia oculta do livro pode corromper e destruir a mente de quem a recebe, isso poderá arruinar nosso plano!

- Mestre dos magos: Então vamos buscar outro jeito, eu sei que já fomos muito longe até chegar aqui mas deve existir outro jeito!

- Centrion: Eu não sei meu irmão, estou tentado a continuar e receber esse poder para cumprir com promessa que fizemos!

- Mestre dos magos: Irmão, eu sei que fizemos uma promessa mas não precisamos colocar nossas vidas em risco por isso! Não dessa forma!

Depois de uma conversa sem fim, Centrion deixa de lado os conselhos do irmão e decide realizar o feitiço que permitiria receber os poderes ocultos do livro para conseguir dominar a magia obscura do mundo. Mas o que ele não acreditava era que os avisos que o livro dava era tão fortes quanto a verdade que neles existiam, depois de receber esses poderes Centrion havia mudado, se tornou egoísta e faminto por mais poder deixou seu irmão sozinho em busca de algo que ele jamais conseguiria, pois seus destinos já estavam traçados.


""")
        
    }
    init() { }
}
