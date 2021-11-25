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
    var color = ""
    var size = ""
    var estacionamiento = ""
    var precio = ""
    var animales = ""
    var merch = ""
    
    init(nombre: String, direccion: String, horario: String, imagen: String, numero: String, color: String, size: String, estacionamiento: String, precio: String, animales: String, merch: String) {
        self.nombre = nombre
        self.direccion = direccion
        self.horario = horario
        self.imagen = imagen
        self.numero = numero
        self.color = color
        self.size = size
        self.estacionamiento = estacionamiento
        self.precio = precio
        self.animales = animales
        self.merch = merch
        
    }
}
