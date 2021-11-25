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
        celda.lblHorario.text = zoologicos[indexPath.row].horario
        celda.lblNumero.text = zoologicos[indexPath.row].numero
        celda.lblColor.text = zoologicos[indexPath.row].color
        celda.lblSize.text = zoologicos[indexPath.row].size
        celda.lblEstacionamiento.text = zoologicos[indexPath.row].estacionamiento
        celda.lblPrecio.text = zoologicos[indexPath.row].precio
        celda.lblAnimales.text = zoologicos[indexPath.row].animales
        celda.lblMerch.text = zoologicos[indexPath.row].merch
        
        
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 233
    }
    
    
    var zoologicos : [Zoologico] = []
    @IBOutlet weak var tvZoologicos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Zoologico"
        
        zoologicos.append(Zoologico(nombre: "Animales de oro", direccion: "Downtown #2051", horario: "De 10 am a 8 pm", imagen: "zoo", numero: "(644) 874 2134", color: "clr: Blanco", size: "Size: Grande", estacionamiento: "Est: Si", precio: "$100", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Zoologico de San Diego", direccion: "Por la calle insurgentes #8421", horario: "De 9 am a 9 pm", imagen: "sandiego", numero: "(644) 335 6730", color: "clr: Azul", size: "Size: Chico", estacionamiento: "Est: Si", precio: "$150", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "African Safari", direccion: "En las afueras de puebla #5073", horario: "De 8 am a 8 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 990 6431", color: "Clr: Gris", size: "Size: Grande", estacionamiento: "Est: Si", precio: "$200", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Safari Bueno", direccion: "Llegando a sonoita #5123", horario: "De 8 am a 8 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 881 3029", color: "Clr: Gris", size: "Size: Grande", estacionamiento: "Est: No", precio: "$260", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Parque infantil", direccion: "Pasando cd. Obregon #3045", horario: "De 8 am a 10 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 992 2290", color: "Clr: Plata", size: "Size: Grande", estacionamiento: "Est: Si", precio: "$300", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "California zoo", direccion: "Llegando a california #1034", horario: "De 7 am a 9 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 390 6571", color: "Clr: Azul", size: "Size: Grande", estacionamiento: "Est: No", precio: "$100", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Orlando zoo", direccion: "Subiendo por orlando #1032", horario: "De 10 am a 10 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 204 2039", color: "Clr: Verde", size: "Size: Grande", estacionamiento: "Est: Si", precio: "$450", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Mexico zoo", direccion: "A las afueras de empalme #5464", horario: "De 8 am a 10 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 789 6940", color: "Clr: Gris", size: "Size: Grande", estacionamiento: "Est: Si", precio: "$220", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Tryhard zoo", direccion: "Llegando a yucatan #2046", horario: "De 9 am a 8 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 906 9420", color: "Clr: Gris", size: "Size: Grande", estacionamiento: "Est: No", precio: "$300", animales: "Animales: Si", merch: "Merch: Si"))
        zoologicos.append(Zoologico(nombre: "Silksong zoo", direccion: "Subiendo el cerrito #1029", horario: "De 8 am a 7 pm", imagen: "africam-safari-visitas-covid_1", numero: "(644) 478 1023", color: "Clr: Gris", size: "Size: Grande", estacionamiento: "Est: Si", precio: "$250", animales: "Animales: Si", merch: "Merch: Si"))
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalles" {
            let destino = segue.destination as! DetallesZoologicoController
            destino.zoologico = zoologicos[tvZoologicos.indexPathForSelectedRow!.row]
            destino.indice = tvZoologicos.indexPathForSelectedRow!.row
            destino.callBackEliminarZoo = eliminarZoologico
            destino.callBackActualizar = actualizarTableView
        }
        if segue.identifier == "goToCreate"{
            let destino = segue.destination as! CrearContactoController
            destino.callBackAgregarZoo = agregarZoo
        }
        
    }
    
    func actualizarTableView(){
        tvZoologicos.reloadData()
        
    }
    
    func agregarZoo(zoologico: Zoologico){
        zoologicos.append(zoologico)
        actualizarTableView()
    }
    
    func eliminarZoologico(indice: Int){
        zoologicos.remove(at: indice)
        actualizarTableView()
    }


}

