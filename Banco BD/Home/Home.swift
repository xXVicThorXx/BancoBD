//
//  Home.swift
//  Banco BD
//  Created by Victor Manuel Ibarra Herrera on 9/6/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import UIKit

class Home: UIViewController{
    
    
    
    let homeView:viewHome = viewHome()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeView.btnTransferencia.action = #selector(funcionBotonesToolbar)
        self.homeView.btnAñadirTarjeta.action = #selector(funcionBotonesToolbar)
        self.homeView.btnHistorial.action = #selector(funcionBotonesToolbar)
        self.view = homeView
//     cuenta = connetion.loadAcounts()
 
    }

    override func viewWillAppear(_ animated: Bool) {
        self.homeView.tableViewCuentas.backgroundColor = .clear
    }



    @objc func funcionBotonesToolbar(sender: UIButton){
       
        if sender.tag == 1 {
            
            let transferencia = Transferencia()
            self.navigationController?.pushViewController(transferencia, animated: true)
            
        }else if sender.tag == 2{
            
            print(sender.tag)
            
        }else if sender.tag == 3{
            
            print(sender.tag)
            
        }
        
        
    }
    
    
    
}
