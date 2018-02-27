//
//  ViewController.swift
//  tarejetaPresentacionOnlyCode
//
//  Created by victor sotelo on 1/22/18.
//  Copyright © 2018 victor sotelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        crearImagenyCargarlaConAutolayout(nombredeImagen: "photoperfil")
        
        asignarNombreyColocarAutolayout(nombre: "Victor Alfonso Sotelo Ibarra ")
        
        asignarCargoyColocarAutolayout(cargo: "ios Developer")
        
        creartelefonoconstraint(numeroTelefonico: "+(51) 8182009010")
        
        crearemailConstraint(tuemail: "vs@clai.mx")
    }
    
    
    // ponemos la funcion del viewdidappear para cargar nuestro autolayout cuando la visca aparesca se va a ejecutar el autolayout 
    override func viewDidAppear(_ animated: Bool) {
        NSLayoutConstraint.activate(constraintToApply)
        
        // es para mandar a llamar la variable de circular
        self.view.layoutIfNeeded()
    }
    
    
    //variables 
    
    let imagenPerfil = UIImageView()
    var constraintToApply = [NSLayoutConstraint]()
    let nombrePersona = UILabel()
    let cargoPersonal = UILabel()
    let telefonoLabel = UILabel()
    let emailLabel = UILabel()
    
    
    
    
    
    
    
    // funciones 
    
    //primero creamos una funcion y le pasamos el parametro
    func crearImagenyCargarlaConAutolayout(nombredeImagen:String){
        
        imagenPerfil.translatesAutoresizingMaskIntoConstraints = false
        imagenPerfil.image = UIImage (named: nombredeImagen)
        imagenPerfil.contentMode = UIViewContentMode.scaleAspectFill
        imagenPerfil.clipsToBounds = true
        self.view.addSubview(imagenPerfil)
        
        
        //ubicasion asignanmos o en el eje x y o en el j y para que este totalmente centrado ancho y alto para que no cambie sus valores a medida que se rote el dispositivo 
        
        let centerXConstraint = imagenPerfil.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraint = imagenPerfil.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        let widthConstraint = imagenPerfil.widthAnchor.constraint(equalToConstant: 175)
        let heightConstraint = imagenPerfil.heightAnchor.constraint(equalToConstant: 175)
        
        //aqui agarramos cualquiera de las 2 y ponemos este codigo
        
        imagenPerfil.layer.cornerRadius = widthConstraint.constant / 2.0
        
        
        
        
        // vamos a agregarle muchas constraitn usamos un no haremos coleccion seran un solo elemento 
        
        constraintToApply.append(centerXConstraint)
        constraintToApply.append(centerYConstraint)
        constraintToApply.append(widthConstraint)
        constraintToApply.append(heightConstraint)

        
        
    }
    
    func asignarNombreyColocarAutolayout(nombre: String){
    
        nombrePersona.text = nombre
        nombrePersona.textColor = UIColor.black
        nombrePersona.translatesAutoresizingMaskIntoConstraints = false
        nombrePersona.textAlignment = NSTextAlignment.center
        nombrePersona.font = UIFont(name: "Avenir Next",size:20)
        self.view.addSubview(nombrePersona)
        
        //constraint leading izquierda trading derecha top arriba height para que su alto se mantenga estatico 
        let leadingConstraint = nombrePersona.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = nombrePersona.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = nombrePersona.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 18)
        let heigthConstraint = nombrePersona.heightAnchor.constraint(equalToConstant: 25)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailingConstraint)

        constraintToApply.append(topConstraint)
        constraintToApply.append(heigthConstraint)

        
    }
    
    func asignarCargoyColocarAutolayout(cargo :String){
    
        cargoPersonal.text = cargo
        cargoPersonal.textColor = UIColor.black
        cargoPersonal.translatesAutoresizingMaskIntoConstraints = false
        cargoPersonal.textAlignment = NSTextAlignment.center
        cargoPersonal.font = UIFont(name: "Avenir Next",size:16)
        self.view.addSubview(cargoPersonal)
        
        let leadingConstraint = cargoPersonal.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = cargoPersonal.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = cargoPersonal.topAnchor.constraint(equalTo: self.imagenPerfil.bottomAnchor, constant: 10)
        let heigthConstraint = cargoPersonal.heightAnchor.constraint(equalToConstant: 20)
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailingConstraint)

        constraintToApply.append(topConstraint)
        constraintToApply.append(heigthConstraint)

        
    }
    
    func creartelefonoconstraint(numeroTelefonico :String){
        
        telefonoLabel.text = numeroTelefonico
        telefonoLabel.textColor = UIColor.black
        telefonoLabel.translatesAutoresizingMaskIntoConstraints = false
        telefonoLabel.textAlignment = NSTextAlignment.left
        telefonoLabel.font = UIFont(name: "Avenir Next",size:13)
        //solo para calcular
//        telefonoLabel.backgroundColor = UIColor.orange
        self.view.addSubview(telefonoLabel)
        
        let leadingConstraint = telefonoLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let bottomConstraint = telefonoLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
        
    
        let widthConstraint = telefonoLabel.widthAnchor.constraint(equalToConstant: 130)
         let heigthConstraint = telefonoLabel.heightAnchor.constraint(equalToConstant: 20)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(bottomConstraint)
        
        constraintToApply.append(widthConstraint)
        constraintToApply.append(heigthConstraint)

    }
    
    func crearemailConstraint(tuemail :String){
        emailLabel.text = tuemail
        emailLabel.textColor = UIColor.black
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.textAlignment = NSTextAlignment.right
        emailLabel.font = UIFont(name: "Avenir Next",size:17)
        self.view.addSubview(emailLabel)
        
        let leadingConstraint = emailLabel.leadingAnchor.constraint(equalTo: telefonoLabel.trailingAnchor, constant: 8)
        let trailingConstraint = emailLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
        
        let heightConstraint = emailLabel.heightAnchor.constraint(equalToConstant: 20)
        let bottomConstraint = emailLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailingConstraint)
        constraintToApply.append(heightConstraint)
        constraintToApply.append(bottomConstraint)
        
        
    }

    
    //cuando recibimos una advertencia de memoria cuando cargas muchos datos de internet o imagenes
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

