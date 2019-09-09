//
//  ViewController.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 8/27/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class Login: UIViewController {

    
    var viewLogin:ViewLogin = ViewLogin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = viewLogin
        self.hideKeyboardWhenTappedAround()
        viewLogin.btnRegistro.addTarget(self, action: #selector(funcBtnRegister), for: .touchUpInside)
        viewLogin.btnIniciarSesion.addTarget(self, action: #selector(funcBtnLogin), for: .touchUpInside)

        //  Obtener tamaño celular en pixeles
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        print("Width: \(screenWidth) \nHeight: \(screenHeight)")
      
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
    

    
    @objc func funcBtnLogin(){
        performSegue(withIdentifier: "segueHome", sender: nil)
        
        let email:String = self.viewLogin.textFieldCorreo.text!
        let contraseña:String = self.viewLogin.textFieldContraseña.text!
        
        Connection.loginGetToken(email: email, password: contraseña)
    }
    
    @objc func funcBtnRegister(){
        performSegue(withIdentifier: "LoginToRegister", sender: nil)
    }
    
    
    
    
    
    
    
    


}

