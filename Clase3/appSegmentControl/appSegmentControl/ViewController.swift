//
//  ViewController.swift
//  appSegmentControl
//
//  Created by Alejandro Agudo on 8/16/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    
    @IBAction func indexChanged(_ sender: AnyObject){
        switch segmentcontrol.selectedSegmentIndex
        {
        case 0:
            label.text = "First Segment Selected"
        case 1:
            label.text = "Second Segment Selected"
        case 2:
            label.text = "Third Segment Selected"
        case 3:
            label.text = "Fourth Segment Selected"
        case 4:
            label.text = "Fifth Segment Selected"
        default:
            break
        }
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

