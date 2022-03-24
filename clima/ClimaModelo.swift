//
//  ClimaModelo.swift
//  clima
//
//  Created by Mac11 on 24/03/22.
//

import Foundation

struct ClimaModelo {
    let condicionID:Int
    let nombreCiudad: String
    let temperatura: Double
    let humedad:Int
    //propiedad computada
    
    var temperaturaString: String{
        return String(format: "%.f", temperatura)
    }
    
    var nombreCondicion:String{
        switch condicionID {
        case 200...232:
            return "cloud.bolt"
        case 300...351:
            return "cloud.bolt.fill"
        case 400...451:
            return "snow"
        case 500...551:
            return "cloud.bolt.rain"
        case 600...650:
            return "sun.max"
        case 700...721:
            return "sun.min"
        case 800:
            return "cloud"
        case 801...804:
            return "cloud fill"
        default:
            return "cloud"
            
        }
    }
}
