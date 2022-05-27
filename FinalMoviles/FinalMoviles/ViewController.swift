//
//  ViewController.swift
//  FinalMoviles
//
//  Created by Jessica Jerez Castro on 12/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueMainButton: UIView!
    @IBOutlet weak var backgroundGif: UIImageView!
    
    //var capturaEncuesta = CapturaEncuesta(idTipoUsuario: 1, matricula: nil, numero_profesor: nil, numero_empleado: nil, nombre: "", correo: "", contacto_covid: false, vacunado: false)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segueMainButton.layer.cornerRadius = 10.0
        segueMainButton.layer.shadowRadius = 20.0
        
        backgroundGif.loadGif(name: "gif")
    }

    
}

