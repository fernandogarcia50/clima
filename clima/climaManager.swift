//
//  climaManager.swift
//  clima
//
//  Created by Mac11 on 23/03/22.
//

import Foundation

struct climaManager {
    let climaURL="https://api.openweathermap.org/data/2.5/weather?&appid=e36c14461e99e979935242f4d6050b8c&units=metric&lang=es"
    func obtenerClima(nombreCiudad: String){
        let urlString="\(climaURL)&q=\(nombreCiudad)"
        print(urlString)
        realizarSolicitud(url: urlString)
    }
    func realizarSolicitud(url:String){
        //paso 1 crear una url
        if let url = URL(string: url){
            
            //paso crear una url session
            
            let session=URLSession(configuration: .default)
            
            
            
            //asignar tarea a la sesion
            let tarea=session.dataTask(with: url, completionHandler: controladorFinalizacion(datos:respuesta:error:))
            
            //comenzar la tarea
            tarea.resume()
        }
       
      
    }
    func controladorFinalizacion(datos: Data?, respuesta:URLResponse?, error:Error?){
        if error != nil{
            print(error?.localizedDescription ?? "no se ubico el error")
            return
        }else{
            if let datosSeguros=datos{
                let datosString=String(data: datosSeguros, encoding: .utf8)
                print(datosString ?? "no hubo datos")
                analizarJSON(datosClima: datosSeguros)
            }
        }
    }
    func analizarJSON(datosClima: Data){
        let decodificador = JSONDecoder()
        do{
            let datosDecodificados = try decodificador.decode(DatosClima.self, from: datosClima)
            
            let condicionID=datosDecodificados.weather[0].id ?? 0
            let nombreCiudad=datosDecodificados.name ?? ""
            let temperatura = datosDecodificados.main?.temp ?? 0.0
            let humedad = datosDecodificados.main?.humidity ?? 0
            
            var objClimaModelo = ClimaModelo(condicionID: condicionID, nombreCiudad: nombreCiudad, temperatura: temperatura, humedad: humedad)
            print(objClimaModelo.temperaturaString)
            print(objClimaModelo.nombreCondicion)
            
        }catch{
            print(error)
        }
        
    }
}
