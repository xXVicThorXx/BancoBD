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
        self.backgroundColor = .blue
        
        self.addSubview(imgViewCuenta)
        imgViewCuenta.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imgViewCuenta.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imgViewCuenta.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imgViewCuenta.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8).isActive = true
        imgViewCuenta.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
//        self.addSubview(lblNombreCuenta)
//        lblNombreCuenta.topAnchor.constraint(equalTo: self.topAnchor, constant: -5).isActive = true
//        lblNombreCuenta.leadingAnchor.constraint(equalTo: imgViewCuenta.trailingAnchor, constant: 5).isActive = true
//        lblNombreCuenta.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
//        lblNombreCuenta.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        
    }
    
    var a:String?
    
    override func layoutSubviews() {
//        super.layoutSubviews()
//        if let a = a {
//            lblNombreCuenta.text = String(a)
//        }
    }
    
    let imgViewCuenta: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "banca")
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let lblNombreCuenta: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
}
