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
    var callbackVolver : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonEnviar.layer.cornerRadius = 10.0
        
    }
    
    @IBAction func doTapReturn(_ sender: Any) {
        self.dismiss(animated: true, completion: callbackVolver)
    }
}
