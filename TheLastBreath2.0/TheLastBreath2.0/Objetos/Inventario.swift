//
//  Inventario.swift
//  TheLastBreath2.0
//
//  Created by Natan Rodrigues on 24/06/22.
//

import Foundation

struct Inventario {
    var tituloObjeto: String
    var quantidade: Int
    
    init(tituloObjeto: String, quantidade: Int) {
        self.tituloObjeto = tituloObjeto
        self.quantidade = quantidade
    }
}
