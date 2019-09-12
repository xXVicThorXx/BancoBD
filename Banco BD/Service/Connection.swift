//
//  Connection.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation
import Alamofire

class Connection {
     let loggin:String = "http://18.218.255.127:3000/api/login"
     let register:String = "http://18.218.255.127:3000/api/register"
     let acount:String = "http://18.218.255.127:3000/api/createAcount"
     let transaction:String = "http://18.218.255.127:3000/api/transaccion"
     let home:String = "http://18.218.255.127:3000/api/home"
    let defaultUser = UserDefaults.standard
    
     func loginGetToken(email:String,password:String){
        let link = loggin
        let url = URL(string: link)!
//        var request = URLRequest(url: url)
//        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        let body: HTTPHeaders = ["email" : email,
                                 "contraseña" : password]
        
//        guard let bodyEncoded = try? JSONSerialization.data(withJSONObject: body, options: []) else { return }
//        request.httpBody = bodyEncoded
        
        Alamofire.request(url, method: .post, parameters: body, encoding: JSONEncoding.default).responseJSON { (response) in
          
            // Print the token string...
            if let data = response.data,
                let token = try? JSONDecoder().decode(AccessToken.self, from: data) {
                print("*** TOKEN (STRING): \(token.token)")
                //update token in user defaults
                
                if self.defaultUser.value(forKey: "accessToken") == nil{
                     self.defaultUser.set(token.token, forKey: "accessToken")
                }else{
                    self.defaultUser.removeObject(forKey: "accessToken")
                    self.defaultUser.set(token.token, forKey: "accessToken")
                }
                
            }
        }
    }
    
     func registerApi(nombre:String, apellido:String, email:String, contraseña:String, ConfiContra:String, fecha_Nacimiento:String){
        let link = register
        let url = URL(string: link)!
//        var request = URLRequest(url: url)
//        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-type")
        let body:HTTPHeaders = [ "nombre": nombre , "apellido": apellido, "email":email, "contraseña":contraseña,"ConfiContra":ConfiContra, "fecha_Nacimiento": fecha_Nacimiento]
        
//        guard let bodyEncode = try? JSONSerialization.data(withJSONObject: body, options: []) else { return }
        Alamofire.request(url, method: .post, parameters: body, encoding: JSONEncoding.default).responseJSON {(response) in
            if let data = response.data {
                let msg = String(data: data, encoding: .utf8)
                print(msg!)
                
                
                
                ValidationAlert.showValidationRegister(on: Register(), msg: msg!, title: "alerta")
                
            }
            
            
        }
    }
    
     func logginToHome(){
        let link = home
        let url = URL(string: link)!
        if let token = defaultUser.value(forKey: "accessToken") {
          let headers = [ "Authorization": "bearer \(token)" ]
            
            Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON {(response) in
                if let data = response.data {
//                    let msg = String(data: data, encoding: .utf8)
                    print("sientra")
                    let cuenta = try? JSONDecoder().decode(User.self, from: data)
                    print(cuenta!)
//                    let msg = String(data: data, encoding: .utf8)
                    
//                    print(msg!)
                }
                
            }
            
        }
        
       
        
    }
}

//,
//et cuenta = try? JSONDecoder().decode(User.self, from: data)
