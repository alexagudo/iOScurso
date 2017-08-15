//
//  ViewController.swift
//  BenzAppleTV
//
//  Created by Alejandro Agudo on 8/15/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var marca: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func marca(_ sender: Any) {
        marca.text = "Mercedes Benz.";
    }

    @IBAction func color(_ sender: Any) {
        color.text =  "Cambia a color rojo."
        color.textColor = UIColor.red;
    }
    
    @IBAction func imagen(_ sender: Any) {
        imagen.isHidden = !imagen.isHidden;
    }
    
}

