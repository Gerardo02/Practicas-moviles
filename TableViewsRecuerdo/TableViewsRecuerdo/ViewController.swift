//
//  ViewController.swift
//  TableViewsRecuerdo
//
//  Created by Alumno on 21/01/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvVariantes: UITableView!
    var variantes : [Variantes] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return variantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCovid") as! CellController
        celda.lblLineaege.text = variantes[indexPath.row].lineage
        celda.lblDate.text = variantes[indexPath.row].earliest_date
        celda.lblDesignated.text = variantes[indexPath.row].designated_number
        celda.lblAssigned.text = variantes[indexPath.row].assigned_number
        celda.lblName.text = variantes[indexPath.row].who_name
        
        if variantes[indexPath.row].who_name == ""{
            celda.lblName.text = "n/a"
        }
        
        
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 162
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesController
        
        destino.variantes = variantes[tvVariantes.indexPathForSelectedRow!.row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Variantes Covid"
        
        inicializarDatos()
    }
    
    func inicializarDatos(){
        
        let url = URL(string: "http://172.31.13.19:8000/api/variantes")!
        
        var solicitud = URLRequest(url: url)
        solicitud.httpMethod = "GET"
        solicitud.allHTTPHeaderFields = [
            "Accept": "application/json"
        ]
        
        let task = URLSession.shared.dataTask(with: solicitud){
            data, request, error in
            
            if let data = data{
                if let variantes_data = try? JSONDecoder().decode([Variantes].self, from: data){
                    DispatchQueue.main.async {
                        self.variantes = variantes_data
                        self.tvVariantes.reloadData()
                    }
                    
                    print(variantes_data)
                } else {
                    print("No se pudo interpretar respuesta")
                }
                
            } else if let error = error{
                print(error.localizedDescription)
                
            }
        }
        task.resume()
    }

}

