//
//  FirstViewController.swift
//  App2WhatsUniversal
//
//  Created by Alejandro Agudo on 8/15/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertView(_ sender: Any) {
        let actionSheetController:UIAlertController = UIAlertController(title:"Alert", message:"Mensaje", preferredStyle:.alert)
        actionSheetController.addAction(UIAlertAction(title:"OK",style:.default, handler:nil))
        self.present(actionSheetController, animated: true, completion: nil)
    }
 

}

