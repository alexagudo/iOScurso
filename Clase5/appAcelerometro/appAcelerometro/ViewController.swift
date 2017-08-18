//
//  ViewController.swift
//  appAcelerometro
//
//  Created by Alejandro Agudo on 8/18/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit
// Importar libreria que manda llamar cualquier extension que necesites de hardware
import CoreMotion

class ViewController: UIViewController {

    // lazy es una tecnica para retrasar la creacion de un objeto o algun otro proceso hasta que sea necesario
    lazy var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if motionManager.isAccelerometerAvailable{
            _ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: OperationQueue.main) { [weak self] (data: CMAccelerometerData?, error: Error!) in
                print("X = \(data?.acceleration.x)")
                print("Y = \(data?.acceleration.y)")
                print("Z = \(data?.acceleration.z)")
            
            }
        } else {
            print("No hay acelerometro")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

