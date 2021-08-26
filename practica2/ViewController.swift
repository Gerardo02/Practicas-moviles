//
//  ViewController.swift
//  practica2
//
//  Created by Alumno on 8/23/21.
//  Copyright © 2021 LaUlsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNombre.text = "Gerardo Jerez"
    }

    @IBAction func doTapDecirEdad(_ sender: Any) {
        lblResultado.text = "\(lblNombre.text!) tiene \(txtEdad.text!) años"
    }
    
}

