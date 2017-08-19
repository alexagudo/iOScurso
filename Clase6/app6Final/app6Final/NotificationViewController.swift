//
//  NotificationViewController.swift
//  app6Final
//
//  Created by Alejandro Agudo on 8/19/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit
import UserNotifications

class NotificationViewController: UIViewController {
    
    @IBAction func sendNotification(_ sender: AnyObject){
        // 1 Definir Variable content -- Este contenido nos da en el Local Notification
        let content = UNMutableNotificationContent()
        content.title = "Notificacion"
        content.subtitle = "from Caliente"
        content.body = "Notificaciones"
        
        // 2 Definir la imagen
        let imageName = "apple-logo"
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        
        content.attachments = [attachment]
        
        // 3 Definir Triggers
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.0", content: content, trigger: trigger)
        
        // 4
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]){
            (success, error) in
            if success {
                print("success")
            } else {
                print("error")
            }
        }
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
