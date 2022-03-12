//
//  ViewController.swift
//  Encuesta-interfaz
//
//  Created by Alumno on 3/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentsOptions: UISegmentedControl!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblTextMatricula: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func doSegments(_ sender: Any) {
        if(segmentsOptions.selectedSegmentIndex == 0){
            lblMatricula.text = "Matricula"
            lblTextMatricula.placeholder = "Ingresa Matricula"
        }else if(segmentsOptions.selectedSegmentIndex == 1){
            lblMatricula.text = "Numero de profesor"
            lblTextMatricula.placeholder = "Ingresa Numero de profesor"
        }else if(segmentsOptions.selectedSegmentIndex == 2){
            lblMatricula.text = "Numero de empleado"
            lblTextMatricula.placeholder = "Ingresa Numero de empleado"
        }
    }
    
    @IBAction func doSend(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

    
}

