//
//  ViewController.swift
//  ProyectoParcial2
//
//  Created by Jessica Jerez Castro on 24/10/21.
//

import UIKit

class ListaZoologicoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zoologicos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaZoologico") as! CeldaZoologicoController
        celda.lblNombre.text = zoologicos[indexPath.row].nombre
        celda.lblDireccion.text = zoologicos[indexPath.row].direccion
        celda.imgFrontView.image = UIImage(named: zoologicos[indexPath.row].imagen)
        
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 202
    }
    
    
    var zoologicos : [Zoologico] = []
    @IBOutlet weak var tvZoologicos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Zoologico"
        
        zoologicos.append(Zoologico(nombre: "Animales de oro", direccion: "Downtown #2051", horario: "De 10 am a 8 pm", imagen: "zoo", numero: "(644) 874 2134"))
        zoologicos.append(Zoologico(nombre: "Zoologico de San Diego", direccion: "Por la calle insurgentes #8421", horario: "De 9 am a 9 pm", imagen: "sandiego", numero: "(644) 335 6730"))
        zoologicos.append(Zoologico(nombre: "African Safari", direccion: "En las afueras de puebla #5073", horario: "De 8 am a 8 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 990 6431"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesZoologicoController
        destino.zoologico = zoologicos[tvZoologicos.indexPathForSelectedRow!.row]
    }


}

