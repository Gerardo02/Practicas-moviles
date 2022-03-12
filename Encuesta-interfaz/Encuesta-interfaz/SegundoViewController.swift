//
//  SegundoViewController.swift
//  Encuesta-interfaz
//
//  Created by Alumno on 3/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class SegundoVewController : UIViewController{
    
    @IBOutlet weak var switchPrimero: UISwitch!
    @IBOutlet weak var switchSegundo: UISwitch!
    @IBOutlet weak var switchTercero: UISwitch!
    @IBOutlet weak var switchCuarto: UISwitch!
    @IBOutlet weak var switchQuinto: UISwitch!
    @IBOutlet weak var switchSexto: UISwitch!
    @IBOutlet weak var switchSeptimo: UISwitch!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! TercerViewController
        destino.callbackVolver = volverAlPrimero
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    @IBAction func doTapSwitchNingunoAnteriores(_ sender: Any) {
        if(switchSeptimo.isOn){
            switchPrimero.setOn(false, animated: true)
            switchSegundo.setOn(false, animated: true)
            switchTercero.setOn(false, animated: true)
            switchCuarto.setOn(false, animated: true)
            switchQuinto.setOn(false, animated: true)
            switchSexto.setOn(false, animated: true)
            
        }
    }
    @IBAction func doChangeSintoma(_ sender: UISwitch) {
        
        if (sender.isOn) {
            switchSeptimo.setOn(false, animated: true)
        }
        
        if(!(switchPrimero.isOn) && !(switchSegundo.isOn) && !(switchTercero.isOn) && !(switchCuarto.isOn) && !(switchQuinto.isOn) && !(switchSexto.isOn)){
            switchSeptimo.setOn(true, animated: true)
        }
        
        
        
    }
    
    @IBAction func doTapVolver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func volverAlPrimero(){
        self.dismiss(animated: true, completion: nil)
    }
}
