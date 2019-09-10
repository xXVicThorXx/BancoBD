//
//  customViewCuenta.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 9/10/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class customViewCuenta: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(imageViewTarjeta)
        self.addSubview(labelNombreCuenta)
        self.addSubview(labelNoTarjeta)
        
        imageViewTarjeta.topAnchor.constraint(equalTo: self.topAnchor, constant:  5).isActive = true
        imageViewTarjeta.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        imageViewTarjeta.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageViewTarjeta.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
        
        
        let view1 = UIView()
        let view2 = UIView()
        view1.backgroundColor = .clear
        view2.backgroundColor = .clear
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view1.addSubview(labelNombreCuenta)
        view2.addSubview(labelNoTarjeta)
        
        let stackInfoTarjeta = UIStackView(arrangedSubviews: [view1,view2])
        stackInfoTarjeta.translatesAutoresizingMaskIntoConstraints = false
        stackInfoTarjeta.axis = .vertical
        stackInfoTarjeta.spacing = 0
        stackInfoTarjeta.distribution = .fillEqually
        
        
        self.addSubview(stackInfoTarjeta)
        
        stackInfoTarjeta.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        stackInfoTarjeta.leadingAnchor.constraint(equalTo: self.imageViewTarjeta.trailingAnchor, constant: 5).isActive = true
        stackInfoTarjeta.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        stackInfoTarjeta.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    let labelNombreCuenta: UILabel = {
        let label = UILabel()
        label.text = "NOMBRE CUENTA"
        
        return label
    }()
    
    let labelNoTarjeta: UILabel = {
        let label = UILabel()
        label.text = "XXXX XXXX XXXX XXXX"
        
        return label
    }()
    
    let imageViewTarjeta:UIImageView = {
        let imageView = UIImageView()
        
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    
    
    
}
