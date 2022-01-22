//
//  Variantes.swift
//  TableViewsRecuerdo
//
//  Created by Alumno on 21/01/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
class Variantes {
    var lineage : String
    var date : String
    var designated : String
    var asignated : String
    var name : String
    var descripcion : String 
    
    init(_ lineage: String, _ date: String, _ designated: String, _ asignated: String, _ descripcion: String, _ name: String){
        self.lineage = lineage
        self.date = date
        self.designated = designated
        self.asignated = asignated
        self.name = name
        
        self.descripcion = descripcion
    }
}
