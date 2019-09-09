//
//  Transaction.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation

struct Transaccion: Decodable {
    var id_Transaccion:Int
    var id_Cuenta_Remitente:String
    var id_Cuenta_Destinatario:String
    var fecha:Date
    var cantidad:Double
    
}
