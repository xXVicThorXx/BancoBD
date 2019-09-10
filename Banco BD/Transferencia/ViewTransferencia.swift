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
        
        self.addSubview(imgFondo)
        
        imgFondo.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imgFondo.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imgFondo.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imgFondo.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        self.addSubview(viewCuenta1)
        self.addSubview(viewCuenta2)
        self.addSubview(viewCuenta3)
        
        viewCuenta1.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        viewCuenta1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        viewCuenta1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        viewCuenta1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.3).isActive = true
        
        
        
    }
    
    
    let imgFondo: UIImageView = {
        let imgVIew = UIImageView()
        imgVIew.image = UIImage(named: "fondoAzul")
        imgVIew.contentMode = .scaleAspectFill
        
        imgVIew.translatesAutoresizingMaskIntoConstraints = false
        return imgVIew
    }()
    
    
    let viewCuenta1:UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewCuenta2:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewCuenta3:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
   
    
    
    
    
}
