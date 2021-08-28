//
//  ViewController.swift
//  practicaplataforma
//
//  Created by Alumno on 8/27/21.
//  Copyright © 2021 LaUlsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scTipo: UISegmentedControl!
    @IBOutlet weak var lblIdentificador: UILabel!
    @IBOutlet weak var txtIdentificador: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doChangeTipo(_ sender: Any) {
        if scTipo.selectedSegmentIndex == 0 {
            lblIdentificador.text = "Matricula"
            txtIdentificador.placeholder = "Ingresa tu matricula"
        }else if scTipo.selectedSegmentIndex == 1 {
            lblIdentificador.text = "Numero de profesor"
            txtIdentificador.placeholder = "Ingresa tu numero de profesor"
        }else if scTipo.selectedSegmentIndex == 2 {
            lblIdentificador.text = "Numero de empleado"
            txtIdentificador.placeholder = "Ingresa tu numero de empleado"
        }
    }
    
}

