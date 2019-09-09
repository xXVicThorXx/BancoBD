//
//  ViewRegister.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 9/2/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit
import FontAwesome_swift


class ViewRegister: UIView {
    
    let bordesStackView:CGFloat = 40
    var bordesBoton:CGFloat = 0
    let spacingStack:CGFloat = 20
    


    override init(frame: CGRect) {
        super.init(frame: frame)
        
    
        setUpView()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    
    
    func setUpView() {
        self.addSubview(imgFondo)
        
        imgFondo.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imgFondo.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imgFondo.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imgFondo.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        viewNombre.addSubview(textFieldNombre)
        viewApellido.addSubview(textFieldApellido)
        viewEmail.addSubview(textFieldEmail)
        viewContraseña.addSubview(textFieldContraseña)
        viewConfirmarContraseña.addSubview(textFieldConfirmarContraseña)
        viewFecha.addSubview(textFieldFechaNacimiento)
        viewBtnRegistro.addSubview(btnRegistro)
        
        


        btnRegistro.topAnchor.constraint(equalTo: viewBtnRegistro.topAnchor).isActive = true
        btnRegistro.bottomAnchor.constraint(equalTo: viewBtnRegistro.bottomAnchor).isActive = true
        btnRegistro.centerXAnchor.constraint(equalTo: viewBtnRegistro.centerXAnchor).isActive = true
        btnRegistro.widthAnchor.constraint(equalTo: viewBtnRegistro.widthAnchor, multiplier: 0.5).isActive = true
        

        textFieldNombre.topAnchor.constraint(equalTo: viewNombre.topAnchor).isActive = true
        textFieldNombre.bottomAnchor.constraint(equalTo: viewNombre.bottomAnchor).isActive = true
        textFieldNombre.leadingAnchor.constraint(equalTo: viewNombre.leadingAnchor).isActive = true
        textFieldNombre.trailingAnchor.constraint(equalTo: viewNombre.trailingAnchor).isActive = true

        textFieldApellido.topAnchor.constraint(equalTo: viewApellido.topAnchor).isActive = true
        textFieldApellido.bottomAnchor.constraint(equalTo: viewApellido.bottomAnchor).isActive = true
        textFieldApellido.leadingAnchor.constraint(equalTo: viewApellido.leadingAnchor).isActive = true
        textFieldApellido.trailingAnchor.constraint(equalTo: viewApellido.trailingAnchor).isActive = true

        textFieldEmail.topAnchor.constraint(equalTo: viewEmail.topAnchor).isActive = true
        textFieldEmail.bottomAnchor.constraint(equalTo: viewEmail.bottomAnchor).isActive = true
        textFieldEmail.leadingAnchor.constraint(equalTo: viewEmail.leadingAnchor).isActive = true
        textFieldEmail.trailingAnchor.constraint(equalTo: viewEmail.trailingAnchor).isActive = true

        textFieldConfirmarContraseña.topAnchor.constraint(equalTo: viewConfirmarContraseña.topAnchor).isActive = true
        textFieldConfirmarContraseña.bottomAnchor.constraint(equalTo: viewConfirmarContraseña.bottomAnchor).isActive = true
        textFieldConfirmarContraseña.leadingAnchor.constraint(equalTo: viewConfirmarContraseña.leadingAnchor).isActive = true
        textFieldConfirmarContraseña.trailingAnchor.constraint(equalTo: viewConfirmarContraseña.trailingAnchor).isActive = true

        textFieldContraseña.topAnchor.constraint(equalTo: viewContraseña.topAnchor).isActive = true
        textFieldContraseña.bottomAnchor.constraint(equalTo: viewContraseña.bottomAnchor).isActive = true
        textFieldContraseña.leadingAnchor.constraint(equalTo: viewContraseña.leadingAnchor).isActive = true
        textFieldContraseña.trailingAnchor.constraint(equalTo: viewContraseña.trailingAnchor).isActive = true

        textFieldFechaNacimiento.topAnchor.constraint(equalTo: viewFecha.topAnchor).isActive = true
        textFieldFechaNacimiento.bottomAnchor.constraint(equalTo: viewFecha.bottomAnchor).isActive = true
        textFieldFechaNacimiento.leadingAnchor.constraint(equalTo: viewFecha.leadingAnchor).isActive = true
        textFieldFechaNacimiento.trailingAnchor.constraint(equalTo: viewFecha.trailingAnchor).isActive = true



        let stackRegistro = UIStackView(arrangedSubviews: [viewNombre,viewApellido,viewEmail,viewContraseña,viewConfirmarContraseña,viewFecha,viewBtnRegistro])

        stackRegistro.translatesAutoresizingMaskIntoConstraints = false
        stackRegistro.axis = .vertical
        stackRegistro.spacing = spacingStack
        stackRegistro.distribution = .fillEqually

        self.addSubview(stackRegistro)


        stackRegistro.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor).isActive = true
        stackRegistro.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -bordesStackView).isActive = true
        stackRegistro.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: bordesStackView).isActive = true
        stackRegistro.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true

        btnEye.setImage(UIImage(named: "Closed_Eye"), for: .normal)
        viewContraseña.addSubview(btnEye)
        btnEye.centerYAnchor.constraint(equalTo: viewContraseña.centerYAnchor).isActive = true
        btnEye.trailingAnchor.constraint(equalTo: viewContraseña.trailingAnchor, constant: -5).isActive = true
        btnEye.heightAnchor.constraint(equalTo: viewContraseña.heightAnchor, multiplier: 0.7).isActive = true
        btnEye.widthAnchor.constraint(equalTo: btnEye.heightAnchor).isActive = true
        
        btnEye2.setImage(UIImage(named: "Closed_Eye"), for: .normal)
        viewConfirmarContraseña.addSubview(btnEye2)
        btnEye2.centerYAnchor.constraint(equalTo: viewConfirmarContraseña.centerYAnchor).isActive = true
        btnEye2.trailingAnchor.constraint(equalTo: viewConfirmarContraseña.trailingAnchor, constant: -5).isActive = true
        btnEye2.heightAnchor.constraint(equalTo: viewConfirmarContraseña.heightAnchor, multiplier: 0.7).isActive = true
        btnEye2.widthAnchor.constraint(equalTo: btnEye.heightAnchor).isActive = true
        
        btnEye.addTarget(self, action: #selector(switchPassword), for: .touchUpInside)
        btnEye2.addTarget(self, action: #selector(switchPassword2), for: .touchUpInside)
        
        textFieldFechaNacimiento.inputView = fechaNacimientoPicker
        
    }
    
 
  
    
    @objc func switchPassword(){
        
        if  btnEye.imageView?.image == UIImage(named: "Closed_Eye"){
            btnEye.setImage(UIImage(named: "Open_Eye"), for: .normal)
            textFieldContraseña.isSecureTextEntry = false
            
        }else if btnEye.imageView?.image == UIImage(named: "Open_Eye"){
            btnEye.setImage(UIImage(named: "Closed_Eye"), for: .normal)
            textFieldContraseña.isSecureTextEntry = true
            
        }
        
    }
    
    @objc func switchPassword2(){
        
        if  btnEye2.imageView?.image == UIImage(named: "Closed_Eye"){
            btnEye2.setImage(UIImage(named: "Open_Eye"), for: .normal)
            textFieldConfirmarContraseña.isSecureTextEntry = false
            
        }else if btnEye2.imageView?.image == UIImage(named: "Open_Eye"){
            btnEye2.setImage(UIImage(named: "Closed_Eye"), for: .normal)
            textFieldConfirmarContraseña.isSecureTextEntry = true
            
        }
        
    }
    
    
    let lblRegistrarse:UILabel = {
        let label = UILabel()
        label.text = "REGISTRO"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .black
        label.font = UIFont(name: "Arial", size: 20)
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let textFieldNombre: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Nombre"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let textFieldApellido: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Apellido"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let textFieldEmail: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   E-mail"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let textFieldContraseña: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Contraseña"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    let btnEye:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("", for: .normal)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnEye2:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    
    let textFieldConfirmarContraseña: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Confirmar Contraseña"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = true
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let textFieldFechaNacimiento: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   Fecha De Nacimiento"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.textAlignment = .center
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let btnRegistro:UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Registrarse", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Arial", size: 20)
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 0.5
        btn.layer.borderColor = UIColor.lightGray.cgColor
        
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        
    }()
    
    let viewNombre: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewApellido: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewEmail: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewContraseña: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewConfirmarContraseña: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    let viewFecha: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewBtnRegistro: UIView = {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let fechaNacimientoPicker: UIDatePicker = {
       let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(cambiarFecha(sender:)), for: .valueChanged)

        
        return datePicker
    }()
    
    @objc func cambiarFecha(sender: UIDatePicker) {
        let formato = DateFormatter()
        formato.dateStyle = .medium
        formato.timeStyle = .none
        
        let fecha = sender.calendar.dateComponents([.year, .month, .day], from: sender.date)
        
        textFieldFechaNacimiento.text = formato.string(from: sender.date)
        
        
        print("Año: \(fecha.year!)")
        print("Mes: \(fecha.month!)")
        print("Dia: \(fecha.day!)")
    }
    
    let imgFondo: UIImageView = {
        let imgVIew = UIImageView()
        imgVIew.image = UIImage(named: "fondoAzul")
        imgVIew.contentMode = .scaleAspectFill
        
        imgVIew.translatesAutoresizingMaskIntoConstraints = false
        return imgVIew
    }()
    

}
