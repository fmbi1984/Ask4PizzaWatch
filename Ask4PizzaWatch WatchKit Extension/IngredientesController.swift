//
//  IngredientesController.swift
//
//  Created by Francisco Betancourt on 1/25/16.
//  Copyright © 2016 VendwatchTelematics. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
  
  var resultado:[String]?
  
  var ingredientes:[String] = []
  
  var cuenta:Int = 0
  
  @IBOutlet var btnSiguiente: WKInterfaceButton!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    resultado = context as? [String]
    if let contenidoAntes = resultado {
      print("elegidos:")
      for index in contenidoAntes {
        print(index)
      }
    }
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  @IBAction func jamon(value: Bool) {
    if(value){
      ingredientes.append("Jamon")
      resultado!.append("Jamon")
    }else{
      ingredientes = ingredientes.filter(){ $0 != "Jamon"}
      resultado! = resultado!.filter(){ $0 != "Jamon"}
    }
    habilitarBoton()
  }
  
  @IBAction func pepperoni(value: Bool) {
    if(value){
      ingredientes.append("Pepperoni")
      resultado!.append("Pepperoni")
    }else{
      ingredientes = ingredientes.filter(){ $0 != "Pepperoni"}
      resultado! = resultado!.filter(){ $0 != "Pepperoni"}
    }
    habilitarBoton()
  }
  
  @IBAction func pavo(value: Bool) {
    if(value){
      ingredientes.append("Pavo")
      resultado!.append("Pavo")
    }else{
      ingredientes = ingredientes.filter(){ $0 != "Pavo"}
      resultado! = resultado!.filter(){ $0 != "Pavo"}
    }
    habilitarBoton()
  }
  
  @IBAction func salchicha(value: Bool) {
    if(value){
      ingredientes.append("Salchicha")
      resultado!.append("Salchicha")
    }else{
      ingredientes = ingredientes.filter(){ $0 != "Salchicha"}
      resultado! = resultado!.filter(){ $0 != "Salchicha"}
    }
    habilitarBoton()
  }
  
  @IBAction func aceituna(value: Bool) {
    if(value){
      ingredientes.append("Aceituna")
      resultado!.append("Aceituna")
    }else{
      ingredientes = ingredientes.filter(){ $0 != "Aceituna"}
      resultado! = resultado!.filter(){ $0 != "Aceituna"}
    }
    habilitarBoton()
  }
  
  @IBAction func pina(value: Bool) {
    if(value){
      ingredientes.append("Piña")
      resultado!.append("Piña")
    }else{
      ingredientes = ingredientes.filter(){ $0 != "Piña"}
      resultado! = resultado!.filter(){ $0 != "Piña"}
    }
    habilitarBoton()
  }
  
  @IBAction func cebolla(value: Bool) {
    if(value){
      resultado!.append("Cebolla")
      ingredientes.append("Cebolla")
    }else{
      resultado! = resultado!.filter(){ $0 != "Cebolla"}
      ingredientes = ingredientes.filter(){ $0 != "Cebolla"}
    }
    habilitarBoton()
  }
  
  @IBAction func pimiento(value: Bool) {
    if(value){
      resultado!.append("Pimiento")
      ingredientes.append("Pimiento")
    }else{
      resultado! = resultado!.filter(){ $0 != "Pimiento"}
      ingredientes = ingredientes.filter(){ $0 != "Pimiento"}
    }
    habilitarBoton()
  }
  
  func habilitarBoton() {
    if (ingredientes.count == 0) {
      btnSiguiente.setHidden(true)
    } else {
      btnSiguiente.setHidden(false)
    }
  }
  
  @IBAction func btnActionSiguiente() {
    cuenta = 0
    for _ in ingredientes {
      //resultado!.append(index)
        cuenta++
    }
    
    if(cuenta<=5 && cuenta>=1)
    {
        pushControllerWithName("IngredientesSegue", context: resultado)
    }
    else
    {
        let buttonAction = WKAlertAction(title:"Aceptar", style: .Default) { () -> Void in
        }
        
        presentAlertControllerWithTitle("Alerta", message:"Solo puedes elegir hasta 5 ingredientes", preferredStyle: .Alert, actions: [buttonAction]);
    }
  }
}
