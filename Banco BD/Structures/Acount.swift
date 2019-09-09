//
//  Acount.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation

struct Cuenta: Decodable {
    var id_noCuenta:String
    var id_usuario:Int
    var saldo:Double
    var tipo:Int
}
