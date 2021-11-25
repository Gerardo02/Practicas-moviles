//
//  DetallesZoologicoController.swift
//  ProyectoParcial2
//
//  Created by Jessica Jerez Castro on 24/10/21.
//

import Foundation
import UIKit

class DetallesZoologicoController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var zoo : Zoologico?
    var indice : Int?
    
    var callBackEliminarZoo : ((Int) -> Void)?
    var callBackActualizar : (() -> Void)?
   
    
    @IBOutlet weak var tvAnimales: UITableView!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var imgBackView: UIImageView!
    @IBOutlet weak var lblNumero: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblMerch: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblSize: UILabel!
    @IBOutlet weak var lblAnimales: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblEstacionamiento: UILabel!
    
    @IBOutlet weak var btnEliminar: UIButton!
    @IBOutlet weak var btnEditar: UIBarButtonItem!
    @IBOutlet weak var btnCancelar: UIButton!
    
    @IBOutlet weak var txtHorario: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    @IBOutlet weak var txtAnimales: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var txtEstacionamiento: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtMerch: UITextField!
    @IBOutlet weak var txtSize: UITextField!
    @IBOutlet weak var txtColor: UITextField!
    
    var editando = false
    
    
    
    
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
    
    var zoologico : Zoologico = Zoologico(nombre: "", direccion: "", horario: "", imagen: "", numero: "", color: "", size: "", estacionamiento: "", precio: "", animales: "", merch: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = zoologico.nombre
        
        lblDireccion.text = zoologico.direccion
        lblHorario.text = zoologico.horario
        imgBackView.image = UIImage(named: zoologico.imagen)
        lblNumero.text = zoologico.numero
        lblNombre.text = zoologico.nombre
        lblMerch.text = zoologico.merch
        lblPrecio.text = zoologico.precio
        lblAnimales.text = zoologico.animales
        lblEstacionamiento.text = zoologico.estacionamiento
        lblSize.text = zoologico.size
        lblColor.text = zoologico.color
        
        txtSize.text = zoologico.size
        txtMerch.text = zoologico.merch
        txtPrecio.text = zoologico.precio
        txtNombre.text = zoologico.nombre
        txtHorario.text = zoologico.horario
        txtAnimales.text = zoologico.animales
        txtEstacionamiento.text = zoologico.estacionamiento
        txtColor.text = zoologico.color
        txtNumero.text = zoologico.numero
        
        txtSize.isHidden = true
        txtMerch.isHidden = true
        txtPrecio.isHidden = true
        txtNombre.isHidden = true
        txtHorario.isHidden = true
        txtAnimales.isHidden = true
        txtEstacionamiento.isHidden = true
        txtColor.isHidden = true
        txtNumero.isHidden = true
        
        btnCancelar.isHidden = true
        
        
        
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
    
    @IBAction func doTapDelete(_ sender: Any) {
        callBackEliminarZoo!(indice!)
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func doTapEdit(_ sender: Any) {
        editando = !editando
        
        if editando {
            
            
            lblSize.isHidden = true
            lblColor.isHidden = true
            lblMerch.isHidden = true
            lblPrecio.isHidden = true
            lblNombre.isHidden = true
            lblAnimales.isHidden = true
            lblHorario.isHidden = true
            lblEstacionamiento.isHidden = true
            lblNumero.isHidden = true
            lblDireccion.isHidden = true
            
            
            txtSize.isHidden = false
            txtMerch.isHidden = false
            txtPrecio.isHidden = false
            txtNombre.isHidden = false
            txtHorario.isHidden = false
            txtAnimales.isHidden = false
            txtEstacionamiento.isHidden = false
            txtColor.isHidden = false
            txtNumero.isHidden = false
            
            btnEliminar.isHidden = true
            btnEditar.title = "Guardar"
            btnCancelar.isHidden = false
            
        }else{
            zoo?.numero = txtNumero.text!
            zoo?.estacionamiento = txtEstacionamiento.text!
            zoo?.animales = txtAnimales.text!
            zoo?.precio = txtPrecio.text!
            zoo?.merch = txtMerch.text!
            zoo?.nombre = txtNombre.text!
            zoo?.color = txtColor.text!
            zoo?.horario = txtHorario.text!
            zoo?.size = txtSize.text!
            
            lblSize.text = txtSize.text
            lblMerch.text = txtMerch.text
            lblColor.text = txtColor.text
            lblNumero.text = txtNumero.text
            lblPrecio.text = txtPrecio.text
            lblHorario.text = txtHorario.text
            lblNombre.text = txtNombre.text
            lblEstacionamiento.text = txtNombre.text
            lblAnimales.text = txtAnimales.text
            callBackActualizar!()
            
            lblSize.isHidden = false
            lblColor.isHidden = false
            lblMerch.isHidden = false
            lblPrecio.isHidden = false
            lblNombre.isHidden = false
            lblAnimales.isHidden = false
            lblHorario.isHidden = false
            lblEstacionamiento.isHidden = false
            lblNumero.isHidden = false
            lblDireccion.isHidden = false
            
            
            txtSize.isHidden = true
            txtMerch.isHidden = true
            txtPrecio.isHidden = true
            txtNombre.isHidden = true
            txtHorario.isHidden = true
            txtAnimales.isHidden = true
            txtEstacionamiento.isHidden = true
            txtColor.isHidden = true
            txtNumero.isHidden = true
            
            btnEliminar.isHidden = false
            btnEditar.title = "Editar"
            btnCancelar.isHidden = true
            
        }
        
        
        
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        editando = false
        btnCancelar.isHidden = true
        
        lblSize.isHidden = false
        lblColor.isHidden = false
        lblMerch.isHidden = false
        lblPrecio.isHidden = false
        lblNombre.isHidden = false
        lblAnimales.isHidden = false
        lblHorario.isHidden = false
        lblEstacionamiento.isHidden = false
        lblNumero.isHidden = false
        lblDireccion.isHidden = false
        
        
        txtSize.isHidden = true
        txtMerch.isHidden = true
        txtPrecio.isHidden = true
        txtNombre.isHidden = true
        txtHorario.isHidden = true
        txtAnimales.isHidden = true
        txtEstacionamiento.isHidden = true
        txtColor.isHidden = true
        txtNumero.isHidden = true
        
        btnEliminar.isHidden = false
        btnEditar.title = "Editar"
        btnCancelar.isHidden = true
        
        txtSize.text = lblSize.text
        txtMerch.text = lblMerch.text
        txtColor.text = lblColor.text
        txtNumero.text = lblNumero.text
        txtPrecio.text = lblPrecio.text
        txtHorario.text = lblHorario.text
        txtNombre.text = lblNombre.text
        txtEstacionamiento.text = lblEstacionamiento.text
        txtAnimales.text = lblAnimales.text
        
        
        
        
    }
    
}
