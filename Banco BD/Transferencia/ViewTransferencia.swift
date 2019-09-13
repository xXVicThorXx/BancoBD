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
        self.addSubview(viewMonto)
        self.addSubview(viewCuentaDestinatario)
        
        viewMonto.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor).isActive = true
        viewMonto.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        viewMonto.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        viewMonto.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.1).isActive = true
        
        viewCuenta1.bottomAnchor.constraint(equalTo: viewMonto.topAnchor, constant: -5).isActive = true
        viewCuenta1.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 5).isActive = true
        viewCuenta1.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -5).isActive = true
        viewCuenta1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        

        viewCuentaDestinatario.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        viewCuentaDestinatario.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        viewCuentaDestinatario.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        viewCuentaDestinatario.topAnchor.constraint(equalTo: viewMonto.bottomAnchor, constant: -5).isActive = true
        
        //VIEW CUENTA 1
        
        viewCuenta1.addSubview(boton1)
        viewCuenta1.addSubview(viewDatosCuenta1)
        
        boton1.centerYAnchor.constraint(equalTo: viewCuenta1.centerYAnchor).isActive = true
        boton1.trailingAnchor.constraint(equalTo: viewCuenta1.trailingAnchor, constant:  -5).isActive = true
        boton1.widthAnchor.constraint(equalTo: viewCuenta1.heightAnchor, multiplier: 0.3).isActive = true
        boton1.heightAnchor.constraint(equalTo: viewCuenta1.heightAnchor, multiplier: 0.3).isActive = true
        
        viewDatosCuenta1.centerYAnchor.constraint(equalTo: viewCuenta1.centerYAnchor).isActive = true
        viewDatosCuenta1.leadingAnchor.constraint(equalTo:viewCuenta1.leadingAnchor, constant: 5).isActive = true
        viewDatosCuenta1.trailingAnchor.constraint(equalTo: boton1.leadingAnchor, constant: -5).isActive = true
        viewDatosCuenta1.heightAnchor.constraint(equalTo: viewCuenta1.heightAnchor, multiplier: 0.6).isActive = true
        
        let imageView1 = UIImageView()
        imageView1.image = UIImage(named: "visa")
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        viewDatosCuenta1.addSubview(imageView1)
        
        imageView1.centerYAnchor.constraint(equalTo: viewDatosCuenta1.centerYAnchor).isActive = true
        imageView1.heightAnchor.constraint(equalTo: viewDatosCuenta1.heightAnchor, multiplier: 0.6).isActive = true
        imageView1.widthAnchor.constraint(equalTo: viewDatosCuenta1.heightAnchor, multiplier: 0.75).isActive = true
        imageView1.leadingAnchor.constraint(equalTo: viewDatosCuenta1.leadingAnchor, constant: 5).isActive = true
        
        viewDatosCuenta1.addSubview(label1)
        viewDatosCuenta1.addSubview(label2)
        
        label1.topAnchor.constraint(equalTo: viewDatosCuenta1.topAnchor, constant: 5).isActive = true
        label1.leadingAnchor.constraint(equalTo: imageView1.trailingAnchor, constant: 5).isActive = true
        label1.trailingAnchor.constraint(equalTo: viewDatosCuenta1.trailingAnchor, constant: -5).isActive = true
        label1.bottomAnchor.constraint(equalTo: viewDatosCuenta1.centerYAnchor, constant: -5).isActive = true
        
        label2.topAnchor.constraint(equalTo: viewDatosCuenta1.centerYAnchor, constant:  5).isActive = true
        label2.leadingAnchor.constraint(equalTo: imageView1.trailingAnchor, constant:  5).isActive = true
        label2.trailingAnchor.constraint(equalTo: viewDatosCuenta1.trailingAnchor, constant: -5).isActive = true
        label2.bottomAnchor.constraint(equalTo: viewDatosCuenta1.bottomAnchor, constant: -5).isActive = true
        
        
//        VIEW CUENTA DESTINATARIO
        
        viewCuentaDestinatario.addSubview(boton2)
        viewCuentaDestinatario.addSubview(viewDatosCuenta2)
        
        boton2.centerYAnchor.constraint(equalTo: viewCuentaDestinatario.centerYAnchor).isActive = true
        boton2.trailingAnchor.constraint(equalTo: viewCuentaDestinatario.trailingAnchor, constant:  -5).isActive = true
        boton2.widthAnchor.constraint(equalTo: viewCuentaDestinatario.heightAnchor, multiplier: 0.3).isActive = true
        boton2.heightAnchor.constraint(equalTo: viewCuentaDestinatario.heightAnchor, multiplier: 0.3).isActive = true
        
        viewDatosCuenta2.centerYAnchor.constraint(equalTo: viewCuentaDestinatario.centerYAnchor).isActive = true
        viewDatosCuenta2.leadingAnchor.constraint(equalTo:viewCuentaDestinatario.leadingAnchor, constant: 5).isActive = true
        viewDatosCuenta2.trailingAnchor.constraint(equalTo: boton2.leadingAnchor, constant: -5).isActive = true
        viewDatosCuenta2.heightAnchor.constraint(equalTo: viewCuentaDestinatario.heightAnchor, multiplier: 0.6).isActive = true
        
        let imageView2 = UIImageView()
        imageView2.image = UIImage(named: "visa")
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        viewDatosCuenta2.addSubview(imageView2)
        
        imageView2.centerYAnchor.constraint(equalTo: viewDatosCuenta2.centerYAnchor).isActive = true
        imageView2.heightAnchor.constraint(equalTo: viewDatosCuenta2.heightAnchor, multiplier: 0.6).isActive = true
        imageView2.widthAnchor.constraint(equalTo: viewDatosCuenta2.heightAnchor, multiplier: 0.75).isActive = true
        imageView2.leadingAnchor.constraint(equalTo: viewDatosCuenta2.leadingAnchor, constant: 5).isActive = true

        
        viewDatosCuenta2.addSubview(label3)
        viewDatosCuenta2.addSubview(label4)
        
        label3.topAnchor.constraint(equalTo: viewDatosCuenta2.topAnchor, constant: 5).isActive = true
        label3.leadingAnchor.constraint(equalTo: imageView2.trailingAnchor, constant: 5).isActive = true
        label3.trailingAnchor.constraint(equalTo: viewDatosCuenta2.trailingAnchor, constant: -5).isActive = true
        label3.bottomAnchor.constraint(equalTo: viewDatosCuenta2.centerYAnchor, constant: -5).isActive = true
        
        label4.topAnchor.constraint(equalTo: viewDatosCuenta2.centerYAnchor, constant:  5).isActive = true
        label4.leadingAnchor.constraint(equalTo: imageView2.trailingAnchor, constant:  5).isActive = true
        label4.trailingAnchor.constraint(equalTo: viewDatosCuenta2.trailingAnchor, constant: -5).isActive = true
        label4.bottomAnchor.constraint(equalTo: viewDatosCuenta2.bottomAnchor, constant: -5).isActive = true
        
        self.addSubview(labelCuenta1)
        
        labelCuenta1.bottomAnchor.constraint(equalTo: viewCuenta1.topAnchor, constant: -10).isActive = true
        labelCuenta1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        labelCuenta1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        labelCuenta1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07)
        
        self.addSubview(labelCuenta2)
        labelCuenta2.topAnchor.constraint(equalTo: viewCuentaDestinatario.bottomAnchor, constant: 10).isActive = true
        labelCuenta2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        labelCuenta2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        labelCuenta2.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07)
        
        
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
//        view.backgroundColor = .blue
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewMonto:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let viewCuentaDestinatario:UIView = {
        let view = UIView()
       
//        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let boton1:UIButton = {
        let btn = UIButton(type: .system)
        btn.setBackgroundImage(UIImage(named: "BtnAdd"), for: .normal)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let boton2:UIButton = {
        let btn = UIButton(type: .system)
        btn.setBackgroundImage(UIImage(named: "BtnAdd"), for: .normal)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
  
    let viewDatosCuenta1: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        
//       view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewDatosCuenta2: UIView = {
        let view = UIView()
//        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let label1:UILabel = {
        let label = UILabel()
            label.text = "NOMBRE CUENTA 1"
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label2:UILabel = {
        let label = UILabel()
        label.text = "XXXX XXXX XXXX XXXX"
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label3:UILabel = {
        let label = UILabel()
        label.text = "NOMBRE CUENTA 2"
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label4:UILabel = {
        let label = UILabel()
        label.text = "XXXX XXXX XXXX XXXX"
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelCuenta1:UILabel = {
        let label = UILabel()
        label.text = "SELECIONA TU CUENTA"
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labelCuenta2:UILabel = {
        let label = UILabel()
        label.text = "¿A QUIEN QUIERES TRANSFERIR?"
//        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
   
    
    
}
