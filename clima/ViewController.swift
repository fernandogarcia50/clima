//
//  ViewController.swift
//  clima
//
//  Created by Mac11 on 17/03/22.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textoBuscador: UITextField!
    @IBOutlet weak var imagenFondo: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var iconoClima: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textoBuscador.delegate=self
        // Do any additional setup after loading the view.
    }

    @IBAction func ubicacionBtn(_ sender: UIButton) {
        print("coordenadas")
    }
    
    @IBAction func buscarBtn(_ sender: UIButton) {
        print(textoBuscador.text ?? "no encontre nada")
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textoBuscador.text ?? "")
        //ocultar comentario
        textoBuscador.endEditing(true)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("ya acabe de editar")
        
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if(textoBuscador.text != ""){
            return true
        }else{
            print("uno se escribio nada")
            textoBuscador.placeholder="Escribe un nombre"
            return false
        }
        
    }
    
    
}

