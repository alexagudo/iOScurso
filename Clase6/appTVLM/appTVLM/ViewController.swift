//
//  ViewController.swift
//  appTVLM
//
//  Created by Alejandro Agudo on 8/19/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer!

    @IBAction func musicOff(_ sender: Any) {
        player.setVolume(0, fadeDuration: 2)
    }
    
    
    @IBAction func musicOn(_ sender: Any) {
        player.setVolume(1, fadeDuration: 2)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let asset = NSDataAsset(name: "Thunderstruck") else {
            print("Error Loading Audio"); return }
        
        do {
            player = try AVAudioPlayer(data: asset.data)
        } catch {print("Error playing audio."); return}
        
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

