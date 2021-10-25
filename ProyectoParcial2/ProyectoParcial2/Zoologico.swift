//
//  Zoologico.swift
//  ProyectoParcial2
//
//  Created by Jessica Jerez Castro on 24/10/21.
//

import Foundation

class Zoologico {
    var nombre = ""
    var direccion = ""
    var horario = ""
    var imagen = ""
    var numero = ""
    
    init(nombre: String, direccion: String, horario: String, imagen: String, numero: String) {
        self.nombre = nombre
        self.direccion = direccion
        self.horario = horario
        self.imagen = imagen
        self.numero = numero
    }
}
