//
//  ConfirmacionSegue.swift
//
//  Created by Francisco Betancourt on 1/25/16.
//  Copyright © 2016 VendwatchTelematics. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionController: WKInterfaceController {
  
  var resultado:[String]?
  
  @IBOutlet var resultadoLabel: WKInterfaceLabel!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    resultado = context as? [String]
    if let contenidoAntes = resultado {
      print("elegidos:")
      var texto:String = "Elegidos: "
      for index in contenidoAntes {
        texto += "\(index) "
        print(index)
      }
      resultadoLabel.setText(texto)
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
  
}
