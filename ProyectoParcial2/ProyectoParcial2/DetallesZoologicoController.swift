//
//  DetallesZoologicoController.swift
//  ProyectoParcial2
//
//  Created by Jessica Jerez Castro on 24/10/21.
//

import Foundation
import UIKit

class DetallesZoologicoController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvAnimales: UITableView!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgBackView: UIImageView!
    @IBOutlet weak var lblNumero: UILabel!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animales.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAnimales") as! CeldaAnimalesController
        if(self.title == "Animales de oro"){
            celda.lblNombreAnimal.text = animales[indexPath.row].nombre
            celda.lblDescripcionAnimal.text = animales[indexPath.row].descripcion
            celda.imgAnimal.image = UIImage(named: animales[indexPath.row].imagen)
        }else if(self.title == "Zoologico de San Diego"){
            celda.lblNombreAnimal.text = animales2[indexPath.row].nombre
            celda.lblDescripcionAnimal.text = animales2[indexPath.row].descripcion
            celda.imgAnimal.image = UIImage(named: animales2[indexPath.row].imagen)
        }else{
            celda.lblNombreAnimal.text = animales3[indexPath.row].nombre
            celda.lblDescripcionAnimal.text = animales3[indexPath.row].descripcion
            celda.imgAnimal.image = UIImage(named: animales3[indexPath.row].imagen)
        }
        
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 101
    }
    
    var animales : [Animales] = []
    var animales2 : [Animales] = []
    var animales3 : [Animales] = []
    
    var zoologico : Zoologico = Zoologico(nombre: "", direccion: "", horario: "", imagen: "", numero: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = zoologico.nombre
        lblDireccion.text = zoologico.direccion
        lblHorario.text = zoologico.horario
        imgBackView.image = UIImage(named: zoologico.imagen)
        lblNumero.text = zoologico.numero
        
        
        animales.append(Animales(nombre: "Leon", descripcion: "Es el rey de la selva", imagen: "leon"))
        animales.append(Animales(nombre: "Elefante", descripcion: "Es el animal terrestre mas grande del mundo", imagen: "elefante"))
        animales.append(Animales(nombre: "Jirafa", descripcion: "Tiene el cuello enorme y son mudos", imagen: "jirafa"))
        animales.append(Animales(nombre: "Tigre", descripcion: "Es un gato muy grande", imagen: "tigre"))
        animales.append(Animales(nombre: "Hipopotamo", descripcion: "Son sorprendentemente rapidos en tierra", imagen: "Hipopotamo"))
        
        animales2.append(Animales(nombre: "Leopardo", descripcion: "Es muy buen cazador", imagen: "leopardo"))
        animales2.append(Animales(nombre: "Liebre", descripcion: "Parecido a un conejo pero mas rapido", imagen: "liebre"))
        animales2.append(Animales(nombre: "Chimpance", descripcion: "Una familia de monos", imagen: "chimpance"))
        animales2.append(Animales(nombre: "Serpiente", descripcion: "Reptiles intimidantes pero normalmente inofensivos", imagen: "serpiente"))
        animales2.append(Animales(nombre: "Guacamayas", descripcion: "Aves bastante inteligentes y hermosas", imagen: "guaca"))
        
        animales3.append(Animales(nombre: "Cebra", descripcion: "Un caballo con franjas blancas y negras", imagen: "cebra"))
        animales3.append(Animales(nombre: "Rinocerontes", descripcion: "Gigantes animales con un cuerno", imagen: "rino"))
        animales3.append(Animales(nombre: "Bufalo", descripcion: "Animal parecido a los toros", imagen: "bufalo"))
        animales3.append(Animales(nombre: "Cheetah", descripcion: "Gatito muy rapido y muy sangriento", imagen: "cheetah"))
        animales3.append(Animales(nombre: "Avestruz", descripcion: "Ave de dos patas que corren muy rapido", imagen: "ave"))
        
        
    }
    
    
}
