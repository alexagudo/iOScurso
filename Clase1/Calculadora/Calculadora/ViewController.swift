//
//  ViewController.swift
//  Calculadora
//
//  Created by Alejandro Agudo on 8/14/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var var1: UITextField!
    @IBOutlet weak var var2: UITextField!
    @IBOutlet weak var resultado: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func suma(_ sender: Any) {
        resultado.text = String(Int(var1.text!)!+Int(var2.text!)!)
    }

    @IBAction func resta(_ sender: Any) {
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
    }
    
    @IBAction func division(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

