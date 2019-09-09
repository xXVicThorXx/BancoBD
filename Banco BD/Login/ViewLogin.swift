//
//  ViewLogin.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 9/2/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit


class ViewLogin: UIView {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let textFieldHeigth:CGFloat = 0.2
    let textFieldSidesSeparation:CGFloat = 50
    var spaceBetweenFields:CGFloat = 6
    
    
    func setUpViews(){
        
        self.addSubview(imgFondo)
        
        imgFondo.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imgFondo.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imgFondo.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imgFondo.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.addSubview(imgViewCabecera)
        
        
        imgViewCabecera.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        imgViewCabecera.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        imgViewCabecera.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        imgViewCabecera.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2).isActive = true
        
        
        let viewCorreo = UIView()
        let viewContraseña = UIView()
        let viewBtnIniciar = UIView()
        let viewBtnRegister = UIView()
        
        
        let stackInicioSesion = UIStackView(arrangedSubviews: [viewCorreo,viewContraseña,viewBtnIniciar,viewBtnRegister])
        stackInicioSesion.translatesAutoresizingMaskIntoConstraints = false
        stackInicioSesion.distribution = .fillEqually
        
        stackInicioSesion.axis = .vertical
        
        self.addSubview(stackInicioSesion)
        
        stackInicioSesion.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackInicioSesion.trailingAnchor.constraint(equalTo: imgViewCabecera.trailingAnchor, constant:  -textFieldSidesSeparation).isActive = true
        stackInicioSesion.leadingAnchor.constraint(equalTo: imgViewCabecera.leadingAnchor, constant: textFieldSidesSeparation).isActive = true
        stackInicioSesion.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        
        
        viewCorreo.addSubview(textFieldCorreo)
        viewContraseña.addSubview(textFieldContraseña)
        viewBtnIniciar.addSubview(btnIniciarSesion)
        viewBtnRegister.addSubview(btnRegistro)
        
        textFieldCorreo.topAnchor.constraint(equalTo: viewCorreo.topAnchor, constant: 5).isActive = true
        textFieldCorreo.trailingAnchor.constraint(equalTo: viewCorreo.trailingAnchor).isActive = true
        textFieldCorreo.leadingAnchor.constraint(equalTo: viewCorreo.leadingAnchor).isActive = true
        textFieldCorreo.bottomAnchor.constraint(equalTo: viewCorreo.bottomAnchor, constant: -5).isActive = true
        
        textFieldContraseña.topAnchor.constraint(equalTo: viewContraseña.topAnchor, constant: 5).isActive = true
        textFieldContraseña.trailingAnchor.constraint(equalTo: viewContraseña.trailingAnchor).isActive = true
        textFieldContraseña.leadingAnchor.constraint(equalTo: viewContraseña.leadingAnchor).isActive = true
        textFieldContraseña.bottomAnchor.constraint(equalTo: viewContraseña.bottomAnchor, constant: -5).isActive = true
        
        btnIniciarSesion.topAnchor.constraint(equalTo: viewBtnIniciar.topAnchor, constant: 5).isActive = true
        btnIniciarSesion.centerXAnchor.constraint(equalTo: viewBtnIniciar.centerXAnchor).isActive = true
        btnIniciarSesion.widthAnchor.constraint(equalTo: viewBtnIniciar.widthAnchor, multiplier:  0.5).isActive = true
        btnIniciarSesion.bottomAnchor.constraint(equalTo: viewBtnIniciar.bottomAnchor, constant: -5).isActive = true
        
        btnRegistro.topAnchor.constraint(equalTo: viewBtnRegister.topAnchor, constant: 5).isActive = true
        btnRegistro.centerXAnchor.constraint(equalTo: viewBtnRegister.centerXAnchor).isActive = true
        btnRegistro.widthAnchor.constraint(equalTo: viewBtnRegister.widthAnchor, multiplier:  0.5).isActive = true
        btnRegistro.bottomAnchor.constraint(equalTo: viewBtnRegister.bottomAnchor, constant: -5).isActive = true
        
        
        
        
        btnEye.setImage(UIImage(named: "Open_Eye"), for: .normal)
        
        viewContraseña.addSubview(btnEye)
        btnEye.centerYAnchor.constraint(equalTo: textFieldContraseña.centerYAnchor).isActive = true
        btnEye.trailingAnchor.constraint(equalTo: textFieldContraseña.trailingAnchor, constant: -5).isActive = true
        btnEye.heightAnchor.constraint(equalTo: textFieldContraseña.heightAnchor, multiplier: 0.7).isActive = true
        btnEye.widthAnchor.constraint(equalTo: btnEye.heightAnchor).isActive = true
        
        btnEye.addTarget(self, action: #selector(switchPassword), for: .touchUpInside)
        
        
    }
    
    
    let imgView = UIImageView()

    
    @objc func switchPassword(){
        
        if  btnEye.imageView?.image == UIImage(named: "Closed_Eye"){
            btnEye.setImage(UIImage(named: "Open_Eye"), for: .normal)
            textFieldContraseña.isSecureTextEntry = false
           
        }else if btnEye.imageView?.image == UIImage(named: "Open_Eye"){
            btnEye.setImage(UIImage(named: "Closed_Eye"), for: .normal)
            textFieldContraseña.isSecureTextEntry = true
            
        }
        
    }
    
    let textFieldCorreo: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Ingresa tu correo electronico"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let btnEye:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    
    let textFieldContraseña: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Ingresa tu Contraseña"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
       
        
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    
    let imgViewCabecera: UIImageView = {
        let imgVIew = UIImageView()
        imgVIew.image = UIImage(named: "banca")
        imgVIew.contentMode = .scaleAspectFit
        
        imgVIew.translatesAutoresizingMaskIntoConstraints = false
        return imgVIew
    }()
    
    let imgFondo: UIImageView = {
        let imgVIew = UIImageView()
        imgVIew.image = UIImage(named: "fondoAzul")
        imgVIew.contentMode = .scaleAspectFill
        
        imgVIew.translatesAutoresizingMaskIntoConstraints = false
        return imgVIew
    }()
    
    let btnIniciarSesion:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Iniciar Sesión", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Arial", size: 20)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.lightGray.cgColor
        
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let btnRegistro:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Registrarse", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Arial", size: 20)
        //        btn.layer.cornerRadius = 10
        //        btn.layer.borderWidth = 0.5
        //        btn.layer.borderColor = UIColor.lightGray.cgColor
        
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let btnAcercaDe:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Acerca De", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Arial", size: 20)
        //        btn.layer.cornerRadius = 10
        //        btn.layer.borderWidth = 0.5
        //        btn.layer.borderColor = UIColor.lightGray.cgColor
        
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()

}
