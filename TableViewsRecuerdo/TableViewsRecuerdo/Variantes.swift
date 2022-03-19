//
//  Variantes.swift
//  TableViewsRecuerdo
//
//  Created by Alumno on 21/01/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
class Variantes : Decodable {
    var lineage : String?
    var earliest_date : String?
    var designated_number : String?
    var assigned_number : String?
    var who_name : String?
    var description : String?
    
    /*init(_ lineage: String, _ date: String, _ designated: String, _ asignated: String, _ descripcion: String, _ name: String){
        self.lineage = lineage
        self.earliest_date = date
        self.designated_number = designated
        self.assigned_number = asignated
        self.who_name = name
        
        self.description = descripcion
    }*/
}
