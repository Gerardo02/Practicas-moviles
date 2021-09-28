//
//  ViewController.swift
//  TableViews
//
//  Created by Alumno on 9/27/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cell alumno") as! CeldaAlumnoController
        celda.lblNombreCell.text = nombres[indexPath.row]
        celda.lblMatriculaCell.text = matriculas[indexPath.row]
        celda.lblPromedioCell.text = promedios[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 79
    }

    
    let nombres = ["Gerardo", "Jose", "Juan", "Pedro"]
    let matriculas = ["199021", "197501", "487592", "177842"]
    let promedios = ["10.0", "1.8", "7.4", "5.2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

