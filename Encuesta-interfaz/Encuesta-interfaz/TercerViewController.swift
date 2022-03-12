//
//  TercerViewController.swift
//  Encuesta-interfaz
//
//  Created by Alumno on 3/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class TercerViewController : UIViewController{
    var callbackVolver : (() -> Void)?
    
    @IBAction func doTapVolverInicio(_ sender: Any) {
        self.dismiss(animated: true, completion: callbackVolver)
    }
}
