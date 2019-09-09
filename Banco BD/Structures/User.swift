//
//  User.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation

struct User: Decodable{
    var nombre:String
    var apellido:String
    var email:String
    var contraseña:String
    var fecha_Nacimiento:String
    var cuenta:Cuenta
    
}
