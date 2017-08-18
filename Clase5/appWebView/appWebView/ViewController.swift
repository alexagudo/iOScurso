//
//  ViewController.swift
//  appWebView
//
//  Created by Alejandro Agudo on 8/18/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // generar objeto URL
        let google = URL(string:"http://www.alexagudo.com")
        
        // cargar en memoria
        webView.loadRequest(URLRequest(url:google!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

