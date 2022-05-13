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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segueMainButton.layer.cornerRadius = 10.0
        segueMainButton.layer.shadowRadius = 20.0
        
        backgroundGif.loadGif(name: "gif")
    }


}

