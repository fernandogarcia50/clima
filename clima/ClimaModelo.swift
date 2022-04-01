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
    let descripcion:String
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
        case 500...551:
            return "cloud.bolt.rain"
        case 600...650:
            return "snow"
        case 700...781:
            return "sun.dust"
        case 800:
            return "cloud"
        case 801...804:
            return "cloud.fill"
        default:
            return "cloud"
            
        }
    }
    var nombreImagen:String{
        switch condicionID {
        case 200...232:
            return "tormenta"
        case 300...351:
            return "llovizna"
        case 500...551:
            return "lluvia"
        case 600...650:
            return "nevada"
        case 700...721:
            return "niebla"
        case 800:
            return "claro"
        case 801...804:
            return "nubes"
        default:
            return "nubes"
            
        }
    }
}
