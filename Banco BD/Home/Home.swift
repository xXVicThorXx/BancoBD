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
        self.homeView.btnTransferencia.action = #selector(funcionBtnTransferencia)
        self.view = homeView

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.homeView.tableViewCuentas.backgroundColor = .clear
    }
    
    
    
    @objc func funcionBtnTransferencia(){
        performSegue(withIdentifier: "HomeSegueTransferencia", sender: nil)
        
        print("HOLII")
    }
    
    
}
