//
//  SegundoViewController.swift
//  FinalMoviles
//
//  Created by Jessica Jerez Castro on 12/05/22.
//

import Foundation
import UIKit

class SegundoViewController : UIViewController {
    
    @IBOutlet weak var marcaCarro: UITextField!
    @IBOutlet weak var colorCarro: UITextField!
    @IBOutlet weak var tipoCarro: UITextField!
    @IBOutlet weak var buttonParaDatos: UIView!
    
    
    let marca = ["Toyota", "Volkswagen", "Nissan", "Mazda", "Honda"]
    let color = ["Negro", "Plateado", "Azul", "Rojo", "Blanco"]
    let tipo = ["Sedan", "Camioneta", "Minivan", "SUV"]
    
    var marcaPickerView = UIPickerView()
    var colorPickerView = UIPickerView()
    var tipoPickerView = UIPickerView()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! TercerViewController
        destino.callbackVolver = volverAlPrimero
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonParaDatos.layer.cornerRadius = 10.0
        
        marcaCarro.inputView = marcaPickerView
        colorCarro.inputView = colorPickerView
        tipoCarro.inputView = tipoPickerView
        
        marcaPickerView.delegate = self
        marcaPickerView.dataSource = self
        colorPickerView.delegate = self
        colorPickerView.dataSource = self
        tipoPickerView.delegate = self
        tipoPickerView.dataSource = self
        
        marcaPickerView.tag = 1
        colorPickerView.tag = 2
        tipoPickerView.tag = 3
        
    }
    
    func volverAlPrimero(){
        self.dismiss(animated: true, completion: nil)
    }
}


// Opciones multiples primera parte del formulario
extension SegundoViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag{
            case 1:
                return marca.count
            
            case 2:
                return color.count
            
            case 3:
                return tipo.count
            
            default:
                return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
            case 1:
                return marca[row]
            
            case 2:
                return color[row]
                
            case 3:
                return tipo[row]
            
            default:
                return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
            case 1:
                marcaCarro.text = marca[row]
                marcaCarro.resignFirstResponder()
            
            case 2:
                colorCarro.text = color[row]
                colorCarro.resignFirstResponder()
                
            case 3:
                tipoCarro.text = tipo[row]
                tipoCarro.resignFirstResponder()
            
            default:
                return
        }
    }
    
    
}
