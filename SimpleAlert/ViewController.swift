//
//  ViewController.swift
//  SimpleAlert
//
//  Created by Luke Crum on 11/13/17.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func didMoveToView() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func buttonPresses(_ sender: Any) {
        let alertView = SimpleAlert(width: 200, height: 300, image: "x", text: "Alert!", textAlignment: "top" ,backgroundColor: UIColor.lightGray, imageWidth: 100, imageHeight: 100, buttonWidth: 100, buttonHeight: 50, buttonAlignment: "top")
        alertView.center = view.center
        self.view.addSubview(alertView)
    }

    
}

