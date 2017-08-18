//
//  ViewController.swift
//  appGesture
//
//  Created by Alejandro Agudo on 8/18/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Cargar en Memoria
        self.hideKeyboardWhenTappingAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}


// Para agregar funciones dentro del background de las vistas utilizas la sintaxis extension + UI (X)
extension UIViewController{
    
    // Determina un metodo dentro de una funcion
    func hideKeyboardWhenTappingAround(){
        let tap : UITapGestureRecognizer = UITapGestureRecognizer (target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard(){
        view.endEditing(true)
    }
}
