//
//  CrearContactoController.swift
//  ProyectoParcial2
//
//  Created by Jessica Jerez Castro on 24/11/21.
//

import Foundation
import UIKit

class CrearContactoController : UIViewController {
    
    @IBOutlet weak var txtSize: UITextField!
    @IBOutlet weak var txtHorario: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtColor: UITextField!
    @IBOutlet weak var txtEstacionamiento: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var txtAnimales: UITextField!
    @IBOutlet weak var txtMerch: UITextField!
    
    var callBackAgregarZoo : ((Zoologico) -> Void)?
    
    override func viewDidLoad() {
        self.title = "Crear zoo"
    }
    @IBAction func doTapGuardar(_ sender: Any) {
        let contacto = Zoologico(nombre: txtNombre.text!, direccion: txtDireccion.text!, horario: txtHorario.text!, imagen: "zoo", numero: txtTelefono.text!, color: txtColor.text!, size: txtSize.text!, estacionamiento: txtEstacionamiento.text!, precio: txtPrecio.text!, animales: txtAnimales.text!, merch: txtMerch.text!)
        
        callBackAgregarZoo!(contacto)
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
