//
//  ViewController.swift
//  iOsFadeMusic
//
//  Created by Alejandro Agudo on 8/16/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit
// Libreria que se usa para reproducir mp3
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    
    // Configuracion del objeto
    @IBAction func fadeSwitchChanged(_ sender: UISwitch){
        if sender.isOn{
            // Volumen 1 On
            player.setVolume(1, fadeDuration: 2)
        } else {
            // Volume off
            player.setVolume(0, fadeDuration: 2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        guard let asset = NSDataAsset(name: "Thunderstruck") else {
                print("Error Loading Audio"); return }
        
        do {
            player = try AVAudioPlayer(data: asset.data)
        } catch {print("Error playing audio."); return}
        
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

