//
//  ViewController.swift
//  app6Final
//
//  Created by Alejandro Agudo on 8/19/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let localfilePath = Bundle.main.url(forResource: "particulas", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        myWebView.loadRequest(myRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

