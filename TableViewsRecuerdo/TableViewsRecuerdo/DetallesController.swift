//
//  DetallesController.swift
//  TableViewsRecuerdo
//
//  Created by Alumno on 21/01/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesController : UIViewController{
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblDetallesLineage: UILabel!
    @IBOutlet weak var lblDetallesAsigned: UILabel!
    @IBOutlet weak var lblDetallesDesignated: UILabel!
    @IBOutlet weak var lblDetallesDate: UILabel!
    @IBOutlet weak var lblDetallesName: UILabel!
    
    
    
    var variantes : Variantes?
    
    override func viewDidLoad() {
        lblDescripcion.text = variantes!.description
        
        self.title = variantes!.lineage
        
        lblDetallesDate.text = variantes!.earliest_date
        lblDetallesLineage.text = variantes!.lineage
        lblDetallesName.text = variantes!.who_name
        lblDetallesAsigned.text = variantes!.assigned_number
        lblDetallesDesignated.text = variantes!.designated_number
        
        
        
    }
}
