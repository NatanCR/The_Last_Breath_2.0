//
//  BatalhaFinal2.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 30/06/22.
//

import Foundation

class BatalhaFinal2 {
    public func batalhaFinal2() {
        let grannus = Grannus(ataqueRevidus: "REVIDUS", nome: "Grannus", vida: 100)
        
        escritaConsole.printaEscrita("""

- \(nomeJogador): Certo! AAAARRRGG TOME ISSO!!!!!!!

""")
        
        grannus.vida -= 50
        print("Vida Grannus: \(grannus.vida)")
        
        escritaConsole.printaEscrita("""

- \(nomeJogador): Espera aí, cadê ele?

- \(nomeJogador): Não consigo ver nada com essa fumaça!!!!!

- Doodou: DROGA!!! \(nomeJogador) em cima de você!!!!

- Grannus: CRUENTOS PASSOS

""")
        
        jogador.vida -= 30
        
        escritaConsole.printaEscrita("""

Vida \(nomeJogador): \(jogador.vida)

- \(nomeJogador): AAAAARRHHHH!!!!!! DOODOU ELE É MUITO FORTE!!!!!!

- Grannus: Acabou pra você criança! Você sangrará até que sua vida acabe!!!

- \(nomeJogador): Não tão cedo Grannus, não me subestime!!!

- Grannus: MAS O QUE!!!?

- \(nomeJogador): Essa armadura realmente foi útil!! Agora é minha vez!!!!

""")
        
        var escolhaFala1: String
        repeat {
            print("[1] Golpear Grannus no peito [2] Cortar a cabeça de Grannus")
            escolhaFala1 = readLine()!
            
            if escolhaFala1 == "1" || escolhaFala1 != "2" {
                print("\n\(nomeJogador): AAAAH EU VOU ACABAR COM VOCÊ!!!!!")
            } else {
                print("Escolha uma opção válida.")
            }
        } while escolhaFala1 != "1" && escolhaFala1 != "2"
        
        escritaConsole.printaEscrita("""

    - Doodou: O QUE VOCÊ FEEEZ???

    - Doodou: Precisamos dele vivo!!!

    - \(nomeJogador): Está sentindo isso Doodou?? Você vê??

    - Doodou: Mas o que? Do que está falando?

    
     Após \(nomeJogador) matar Grannus, ele absorve seus poderes mágicos sombrios que tomam conta de sua mente e alma até seus olhos ficarem vermelhos e cegos de poder das trevas!
    
    
    - Doodou: \(nomeJogador) você está bem?

    - \(nomeJogador): Doodou eu não preciso mais da sua ajuda! Não percebe? Eu estou mais forte do que nunca!!!

    - Doodou: Eu acho melhor irmos embora, lembre-se precisamos salvar Bryana!!

    - \(nomeJogador): Bryana?? É verdade minha querida irmãzinha!

    - \(nomeJogador): Doodou… HORA DE IR!!! HUAHAUHAUAH
    
    Então \(nomeJogador) tomado pelas trevas e sem consciência do que esta fazendo mata seu companheiro Doodou e parte para casa onde está sua irmã Bryana...

    Ao chegar em casa, \(nomeJogador) vê seu irmão Solveig e sua irmã Bryana sem forças para levantar da cama...

    - Solveig: Você voltou \(nomeJogador), graças a Merlim estávamos esperando por você!! Tem boas notícias?

    \(nomeJogador) olha para Solveig com um olhar sombrio e nesse momento Solveig percebe que seu irmão não está mais ali.

    Então ele levanta os braços e tenta lançar um feitiço para arrancar toda maldade e magia das trevas presa à \(nomeJogador)
    
    - Solveig: HANC ANIMAM PERDITAM!!!

    - \(nomeJogador): Meu irmão… isso já não é mais necessário! Farei um favor a você!

    - Solveig: Não! Não faça isso!!!

    - \(nomeJogador): MARCESCIT!!

    Então, \(nomeJogador) corrompido pelo poder matou seu irmão mais velho e antes que sua irmã Bryana morresse ele a salvou usando todos os seus poderes para livra-la da maldição fazendo com que ele voltasse a si e percebesse o que fez...
    
    

    ...:::>>>FIM<<<:::...


    .
    .
    .


    Obrigado por jogar The Last Breath.

    """)
    }
}
