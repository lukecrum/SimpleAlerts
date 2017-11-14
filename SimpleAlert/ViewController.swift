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
      //  let rect = CGRect(x: 0, y: 0, width: 100, height: 100)

        //alertView.backgroundColor = UIColor.blue

        //print(String(describing: view.center))
        //self.view.addSubview(alertView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func didMoveToView() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPresses(_ sender: Any) {
        let alertView = AlertViewController(width: 200, height: 300, image: "z-foot", text: "Alert!", backgroundColor: UIColor.blue, textAlignment: "top", imageWidth: 100, imageHeight: 100, buttonWidth: 200, buttonHeight: 50, buttonAlignment: "bottom")
        self.view.addSubview(alertView)
        alertView.center = view.center
    }
    
}

