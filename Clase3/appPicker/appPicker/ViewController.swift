//
//  ViewController.swift
//  appPicker
//
//  Created by Alejandro Agudo on 8/16/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,
UIPickerViewDataSource {
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    let colors = ["Red", "Yellow", "Green", "Blue", "Purple"]
    
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet func datePickerChanged(_ sender: Any){
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    // Datepicker
    
    
}
