//
//  viewHome.swift
//  Banco BD
//
//  Created by Victor Manuel Ibarra Herrera on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class viewHome: UIView , UITableViewDelegate, UITableViewDataSource{
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       setUpViews()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var screenSize: CGRect?
    var screenWidth:CGFloat?
    var screenHeight:CGFloat?
    
    func setUpViews(){
        self.addSubview(imgFondo)
        imgFondo.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imgFondo.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imgFondo.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imgFondo.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        screenSize = UIScreen.main.bounds
        screenHeight = screenSize?.height
        screenWidth = screenSize?.width
        
        labelSaludo.font = UIFont(name: "Arial", size: (screenWidth! * 0.05))
        self.addSubview(labelSaludo)
        labelSaludo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        labelSaludo.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        labelSaludo.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        labelSaludo.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.1).isActive = true
        
        self.addSubview(viewX)
        viewX.topAnchor.constraint(equalTo: labelSaludo.bottomAnchor, constant: 10).isActive = true
        viewX.trailingAnchor.constraint(equalTo: labelSaludo.trailingAnchor).isActive = true
        viewX.leadingAnchor.constraint(equalTo: labelSaludo.leadingAnchor).isActive = true
        viewX.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
       
        
        //TABLE VIEW
        self.addSubview(tableViewCuentas)
        tableViewCuentas.register(celdaCuentas.self, forCellReuseIdentifier: "celdaCustomCuentas")
        tableViewCuentas.topAnchor.constraint(equalTo: viewX.bottomAnchor, constant: 10).isActive = true
        tableViewCuentas.leadingAnchor.constraint(equalTo: labelSaludo.leadingAnchor).isActive = true
        tableViewCuentas.trailingAnchor.constraint(equalTo: labelSaludo.trailingAnchor).isActive = true
        tableViewCuentas.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        
        tableViewCuentas.dataSource = self
        tableViewCuentas.delegate = self
    
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableViewCuentas.dequeueReusableCell(withIdentifier: "celdaCustomCuentas") as! celdaCuentas
        celda.a = "Hola"

        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    let labelSaludo: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
//        label.backgroundColor = .white
        label.text = "Bienvenido\nHIjo de Perra"
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let imgFondo: UIImageView = {
        let imgVIew = UIImageView()
        imgVIew.image = UIImage(named: "fondoAzul")
        imgVIew.contentMode = .scaleAspectFill
        
        imgVIew.translatesAutoresizingMaskIntoConstraints = false
        return imgVIew
    }()
    
    let viewX:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let tableViewCuentas: UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
}
