//
//  LoginStruct.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation

struct LoginPost: Codable {
    let email:String
    let contraseña:String
    
    enum Codingkeys: String, CodingKey {
        case email = "email"
        case contraseña = "contraseña"
    }

}
