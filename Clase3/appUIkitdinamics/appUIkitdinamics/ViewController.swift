//
//  ViewController.swift
//  appUIkitdinamics
//
//  Created by Alejandro Agudo on 8/16/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animator:UIDynamicAnimator!
    var snapBehaviour:UISnapBehavior!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var boton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // Crea tap Gesture Recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        
        // Crea TapDynamics
        animator = UIDynamicAnimator(referenceView: self.view)
    }
    
    func userHasTapped(tap:UITapGestureRecognizer){
        let touchPoint = tap.location(in: self.view)
        if snapBehaviour != nil {
            animator.removeBehavior(snapBehaviour)
        }
        
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 0.3
        animator.addBehavior(snapBehaviour)
        
    }
    
    @IBAction func rotar(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle: (100.0 * .pi) / 100.0)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

