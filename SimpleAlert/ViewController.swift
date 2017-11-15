//
//  ViewController.swift
//  SimpleAlert
//
//  Created by Luke Crum on 11/13/17.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alertView = SimpleAlert(width: 300, height: 500, image: "x", text: "Alert!", textAlignment: "top" ,backgroundColor: UIColor.lightGray, imageWidth: 100, imageHeight: 100, buttonWidth: 250, buttonHeight: 50, buttonAlignment: "bottom")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertView.alpha = 0.0

    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func buttonPresses(_ sender: Any) {

        alertView.center = view.center
        alertView.alpha = 0.0
        self.view.addSubview(alertView)
        fadeIn()
    }
    func fadeIn(withDuration duration: TimeInterval = 0.5) {
        UIView.animate(withDuration: duration, animations: {
            self.alertView.alpha = 1.0
        })
    }
    
}

