//
//  SwitchViewController.swift
//  app6Final
//
//  Created by Alejandro Agudo on 8/19/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit
import AVFoundation

class SwitchViewController: UIViewController {

    var player:AVAudioPlayer!
    @IBOutlet weak var username: UITextField!
    
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

        // Do any additional setup after loading the view.
        self.hideKeyboardWhenTappingAround()
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIViewController{
    
    // Determina un metodo dentro de una funcion
    func hideKeyboardWhenTappingAround(){
        let tap : UITapGestureRecognizer = UITapGestureRecognizer (target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard(){
        view.endEditing(true)
    }
}

