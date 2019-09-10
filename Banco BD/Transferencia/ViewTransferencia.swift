//
//  ViewTransferencia.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 9/10/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class ViewTransferencia: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpViews(){
        
        let view1 = UIView()
        let view2 = UIView()
        view1.backgroundColor = .clear
        view2.backgroundColor = .clear
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view1.addSubview(btnCuenta1)
        view2.addSubview(viewCuenta1)
        
        let stackTarjeta1 = UIStackView(arrangedSubviews: [view1,view2])
        stackTarjeta1.translatesAutoresizingMaskIntoConstraints = false
        stackTarjeta1.axis = .horizontal
        stackTarjeta1.spacing = 0
        stackTarjeta1.distribution = .fillEqually
        
        btnCuenta1.topAnchor.constraint(equalTo: view1.topAnchor, constant: 5).isActive = true
        btnCuenta1.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 5).isActive = true
        btnCuenta1.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -5).isActive = true
        btnCuenta1.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier:  0.1).isActive = true
        
        
    }
    
    let textFieldMonto: UITextField = {
        let textField = UITextField()
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let btnCuenta1: UIButton = {
        let boton = UIButton()
        
        
        boton.translatesAutoresizingMaskIntoConstraints = false
        return boton
    }()
    
    let btnCuenta2: UIButton = {
        let boton = UIButton()
        
        
        boton.translatesAutoresizingMaskIntoConstraints = false
        return boton
    }()
    
    let viewCuenta1: customViewCuenta = {
        let view = customViewCuenta()
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewCuenta2: customViewCuenta = {
        let view = customViewCuenta()
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let textFieldDescripcion: UITextField = {
        let textField = UITextField()
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    
}
