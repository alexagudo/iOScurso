//
//  ViewController.swift
//  app3DatePicker
//
//  Created by Alejandro Agudo on 8/16/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Objetos
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    
    // Accion del datepicker
    @IBAction func datePickerChanged(_ sender: Any){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        // Asigancion de valor para label
        let strDate = dateFormatter.string(from:datepicker.date)
        datelabel.text = strDate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

