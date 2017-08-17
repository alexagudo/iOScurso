//
//  ViewController.swift
//  appStopWatch
//
//  Created by Alejandro Agudo on 8/16/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    // variables
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Configuracion de background del time label
        timeLabel.text = String(counter)
        pauseButton.isEnabled = false
        
    }
    
    // Start
    @IBAction func startTimer(_ sender: AnyObject) {
        if(isPlaying){
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    // Pause
    @IBAction func pauseTimer(_ sender: AnyObject){
        startButton.isEnabled = true
        pauseButton.isEnabled = false

        timer.invalidate()
        isPlaying = false
    }
    
    // Reset
    @IBAction func resetTime(_ sender: AnyObject){
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
    }
    
    // Configuracion del contador por parte del back
    func UpdateTimer(){
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

