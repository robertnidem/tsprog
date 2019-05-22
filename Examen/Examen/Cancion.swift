//
//  Cancion.swift
//  Examen
//
//  Created by macbook on 5/8/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import Foundation
class Cancion {
    var nombre: String
    var duracion: String
    var precio: String
    
    init(nombre: String, duracion: String, precio: String) {
        self.nombre = nombre
        self.duracion = duracion
        self.precio = precio
    }
}
