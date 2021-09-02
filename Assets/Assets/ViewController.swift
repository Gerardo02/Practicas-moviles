//
//  ViewController.swift
//  Assets
//
//  Created by Alumno on 9/1/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgSeundaImagen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgSeundaImagen.image = UIImage(named: "giga")
    }


}

