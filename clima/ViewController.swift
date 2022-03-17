//
//  ViewController.swift
//  clima
//
//  Created by Mac11 on 17/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoBuscador: UITextField!
    @IBOutlet weak var imagenFondo: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var iconoClima: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDescripcion.text="calando la app"
        // Do any additional setup after loading the view.
    }

    @IBAction func ubicacionBtn(_ sender: UIButton) {
        print("coordenadas")
    }
    
    @IBAction func buscarBtn(_ sender: UIButton) {
        print(textoBuscador.text ?? "no encontre nada")
    }
}

