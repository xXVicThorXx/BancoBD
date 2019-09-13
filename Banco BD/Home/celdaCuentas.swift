//
//  celdaCuentas.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class celdaCuentas: UITableViewCell {

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        
        self.addSubview(imgViewCuenta)
        imgViewCuenta.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        imgViewCuenta.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8).isActive = true
        imgViewCuenta.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
        imgViewCuenta.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        let view1 = UIView()
        let view2 = UIView()
        view1.backgroundColor = .clear
        view2.backgroundColor = .clear
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view1.addSubview(lblNombreCuenta)
        view2.addSubview(lblNoCuenta)
        
        lblNombreCuenta.topAnchor.constraint(equalTo: view1.topAnchor).isActive = true
        lblNombreCuenta.trailingAnchor.constraint(equalTo: view1.trailingAnchor).isActive = true
        lblNombreCuenta.leadingAnchor.constraint(equalTo: view1.leadingAnchor).isActive = true
        lblNombreCuenta.bottomAnchor.constraint(equalTo: view1.bottomAnchor).isActive = true
        
        lblNoCuenta.topAnchor.constraint(equalTo: view2.topAnchor).isActive = true
        lblNoCuenta.trailingAnchor.constraint(equalTo: view2.trailingAnchor).isActive = true
        lblNoCuenta.leadingAnchor.constraint(equalTo: view2.leadingAnchor).isActive = true
        lblNoCuenta.bottomAnchor.constraint(equalTo: view2.bottomAnchor).isActive = true
        
        let stackInfoTarjeta = UIStackView(arrangedSubviews: [view1,view2])
        stackInfoTarjeta.translatesAutoresizingMaskIntoConstraints = false
        stackInfoTarjeta.axis = .vertical
        stackInfoTarjeta.spacing = 0
        stackInfoTarjeta.distribution = .fillEqually

       
        
        stackInfoTarjeta.leadingAnchor.constraint(equalTo: imgViewCuenta.trailingAnchor, constant: 5).isActive = true
        stackInfoTarjeta.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        stackInfoTarjeta.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -5).isActive = true
        stackInfoTarjeta.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        
        
        
        
        
    }
    
    var nombre:String = "NOMBRE APELLIDO"
    var noCuenta:String = "XXXX XXXX XXXX XXXX"
    
    
    
    override func layoutSubviews() {
         super.layoutSubviews()
        
        lblNombreCuenta.text = nombre
        lblNoCuenta.text = noCuenta
        
        
    }
    
    let imgViewCuenta: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "visa")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let lblNombreCuenta: UILabel = {
        let label = UILabel()
        label.text = ""
        label.backgroundColor = .clear
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lblNoCuenta: UILabel = {
        let label = UILabel()
        label.text = ""
        label.backgroundColor = .clear
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
}
