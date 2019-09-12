//
//  Register.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 8/27/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class Register: UIViewController {
    
    var viewRegister = ViewRegister()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = viewRegister
        setUpNavigationBar()
        self.hideKeyboardWhenTappedAround()
        
        viewRegister.btnRegistro.addTarget(self, action: #selector(register), for: .touchUpInside)
        
    }
    @objc func register (){
       Connection().registerApi(nombre: viewRegister.textFieldNombre.text!, apellido: viewRegister.textFieldApellido.text!, email: viewRegister.textFieldEmail.text!, contraseña: viewRegister.textFieldContraseña.text!,ConfiContra: viewRegister.textFieldConfirmarContraseña.text!, fecha_Nacimiento: viewRegister.textFieldFechaNacimiento.text!)
        

    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
    
    func setUpNavigationBar(){
        navigationItem.title = "REGISTRO"
        
        
    }
    
    
    
    
    

}


//Bloquear Rotacion
extension UINavigationController {
    
    override open var shouldAutorotate: Bool {
        get {
            if let visibleVC = visibleViewController {
                return visibleVC.shouldAutorotate
            }
            return super.shouldAutorotate
        }
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
