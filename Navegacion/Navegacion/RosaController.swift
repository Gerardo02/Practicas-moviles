//
//  ViewController.swift
//  Navegacion
//
//  Created by Alumno on 9/29/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class RosaController: UIViewController {
    
    var nombre = ""
    var matricula = ""
    var promedio = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doTapAna(_ sender: Any) {
        nombre = "Ana"
        matricula = "487321"
        promedio = "9.7"
        self.performSegue(withIdentifier: "goToAmarillo", sender: self)
    }
    
    @IBAction func doTapPedro(_ sender: Any) {
        nombre = "Pedro"
        matricula = "145201"
        promedio = "8.9"
        self.performSegue(withIdentifier: "goToAmarillo", sender: self)
    }
    
    @IBAction func doTapJose(_ sender: Any) {
        nombre = "Jose"
        matricula = "147821"
        promedio = "4.8"
        self.performSegue(withIdentifier: "goToAmarillo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! AmarilloController
        destino.nombre = nombre
        destino.matricula = matricula
        destino.promedio = promedio
        
        
        
    }
}


