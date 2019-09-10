//
//  Connection.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation


class Connection {
    
    static func loginGetToken(email:String,password:String){
        let usuario = LoginPost(email: email,contraseña: password)
        let json = try? JSONEncoder().encode(usuario)
        let jsonBodyString = String(data: json!, encoding: .utf8)
        print(jsonBodyString!)
        print(json!)
        
        let link = "http://18.218.255.127:3000/api/login"
        let liga = URL(string: link)
        var request = URLRequest(url: liga!)
        request.httpMethod = "POST"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonBodyString?.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request)
        { (Data, Res, Err) in
            if(Err != nil){
                print("Error: \(Err!)")
            }else{
                guard let data = Data else {return}
                print("DATA\n\(data)")
                if let responseString = String(data: data, encoding: .utf8) {
                    print(responseString)
                }
//                do{
//
//                    let json = try JSONDecoder().decode(AccessToken.self, from: data)
//
//                    print(json.token)
//
//                }catch let err{
//                    print(err)
//                }
            }
        }
        task.resume()
    }
    
}

