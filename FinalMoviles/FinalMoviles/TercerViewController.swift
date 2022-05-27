//
//  TercerViewController.swift
//  FinalMoviles
//
//  Created by Jessica Jerez Castro on 13/05/22.
//

import Foundation
import UIKit

class TercerViewController : UIViewController {
    
    @IBOutlet weak var buttonEnviar: UIView!
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var apellidoTextField: UITextField!
    @IBOutlet weak var direccionTextField: UITextField!
    @IBOutlet weak var paisTextField: UITextField!
    @IBOutlet weak var estadoTextField: UITextField!
    @IBOutlet weak var CPTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var celularTextField: UITextField!
    
    var callbackVolver : (() -> Void)?
    
    var marcaFinal = ""
    var colorFinal = ""
    var tipoFinal = ""
    var yearFinal = ""
    
    var capturaEncuesta = CapturaEncuesta(marca: nil, color: nil, tipo: nil, year: nil, nombre: "", apellido: "", direccion: "", codigo_postal: nil, correo_electronico: "", celular: nil, pais: nil, estado: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonEnviar.layer.cornerRadius = 10.0
        
    }
    
    @IBAction func doTapReturn(_ sender: Any) {
        capturaEncuesta.marca = marcaFinal
        capturaEncuesta.color = colorFinal
        capturaEncuesta.tipo = tipoFinal
        capturaEncuesta.year = yearFinal
        capturaEncuesta.nombre = nombreTextField.text!
        capturaEncuesta.apellido = apellidoTextField.text!
        capturaEncuesta.direccion = direccionTextField.text!
        capturaEncuesta.pais = paisTextField.text!
        capturaEncuesta.codigo_postal = CPTextField.text!
        capturaEncuesta.correo_electronico = emailTextField.text!
        capturaEncuesta.celular = celularTextField.text!
        capturaEncuesta.estado = estadoTextField.text!
        print(capturaEncuesta)
        
        do {
            
            let url = URL(string: "http://172.31.192.220:8000/api/capturas")!
            var solicitud = URLRequest(url: url)
            solicitud.httpMethod = "POST"
            solicitud.allHTTPHeaderFields = [
                "Accept" : "application/json",
                "Content-Type" : "application/json"
            ]
            
            let jsonData = try JSONEncoder().encode(capturaEncuesta)
            
            
            solicitud.httpBody = jsonData
            
            let task = URLSession.shared.dataTask(with: solicitud){
                data, request, error in
                if let data = data {
                    print(data)
                    DispatchQueue.main.async {
                        // Lo que queramos actualizar
                    }
                }else if let error = error {
                    print(error.localizedDescription)
                }
            }
            task.resume()
            
        } catch {
            
            print("No se pudo codificar objeto en JSON")
        }
        
        self.dismiss(animated: true, completion: callbackVolver)
    }
}
