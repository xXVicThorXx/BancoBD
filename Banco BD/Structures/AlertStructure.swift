//
//  AlertStructure.swift
//  Banco BD
//
//  Created by Jorge Enrique Fischer Delgado on 9/10/19.
//  Copyright © 2019 Victor Manuel Ibarra Herrera. All rights reserved.
//

import Foundation
import UIKit

struct ValidationAlert {
    static func showValidationRegister(on vc: UIViewController, msg:String, title:String){
        let alert = UIAlertController(title: "Correcto", message: msg , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}
