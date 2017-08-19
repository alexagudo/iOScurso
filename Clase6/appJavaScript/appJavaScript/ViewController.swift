//
//  ViewController.swift
//  appJavaScript
//
//  Created by Alejandro Agudo on 8/19/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let localfilePath = Bundle.main.url(forResource: "Particulas/particulas", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        webView.loadRequest(myRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

