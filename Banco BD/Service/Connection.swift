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
    
    static func loginGetToken(email:String,password:String){
//        let user = LoginPost(email: email , contraseña: password)
        
        
        let link = "http://18.218.255.127:3000/api/login"
        let url = URL(string: link)!
        var request = URLRequest(url: url)
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        let body: HTTPHeaders = ["email" : "enrique@gmail.com",
                                 "contraseña" : "absc1234%"]
        
        guard let bodyEncoded = try? JSONSerialization.data(withJSONObject: body, options: []) else { return }
        request.httpBody = bodyEncoded
        
        Alamofire.request(url, method: .post, parameters: body, encoding: JSONEncoding.default).responseJSON { (response) in
            let json = response.result.value
            
            // Print JSON response...
            print("*** RESPONSE (JSON): \(json)")
            
            
            // Print the token string...
            if let data = response.data,
                let token = try? JSONDecoder().decode(AccessToken.self, from: data) {
                
                print("*** TOKEN (STRING): \(token.token)")
            }
        }
        
        //        if let request = URLRequest(url: url) {
        //            request.httpMethod = "POST"
        //        }
        //        var request = URLRequest(url: url)
        //        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //        request.httpMethod = "POST"
//        do{
//            let json = try JSONEncoder().encode(usuario)
//            request.httpBody = json
//            let jsonBodyString = String(data: json, encoding: .utf8)
//            print(jsonBodyString!)
//        }catch let errJson{
//            print(errJson)
//        }



        
//        let task = URLSession.shared.dataTask(with: request)
//        { (Data, Res, Err) in
//            if(Err != nil){
//                print("Error: \(Err!)")
//            }else{
//                guard let data = Data else {return}
//                print("DATA\n\(data)")
//                if let responseString = String(data: data, encoding: .utf8) {
//                    print(responseString)
//                }
////                do{
////
////                    let json = try JSONDecoder().decode(AccessToken.self, from: data)
////
////                    print(json.token)
////
////                }catch let err{
////                    print(err)
////                }
//            }
//        }
//        task.resume()
    }
    
}

