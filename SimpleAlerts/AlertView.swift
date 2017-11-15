//
//  AlertView.swift
//  SimpleAlert
//
//  Created by Luke Crum on 11/13/17.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation
import UIKit

class SimpleAlert: UIView {
    let button = UIButton()
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(width: Int, height: Int, image: String, text: String, textAlignment: String, backgroundColor: UIColor, imageWidth: CGFloat, imageHeight: CGFloat, buttonWidth: Int, buttonHeight: Int, buttonAlignment: String)
    {
        let rect = CGRect(x: 0, y: 0, width: width, height: height)
        super.init(frame:rect)
        addImage(image: image, imageWidth: imageWidth, imageHeight: imageHeight)
        addLabel(text: text, textAlignment: textAlignment)
        addButton(buttonWidth: buttonWidth, buttonHeight: buttonHeight, buttonAlignment: buttonAlignment)
        self.backgroundColor = backgroundColor
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        print("Created alert view!")
    }
    
    func addImage(image: String, imageWidth: CGFloat, imageHeight: CGFloat) {
        let displayImage = UIImage(named: image)
        //NOTE: this will return a fatal error if you used an image that does not exist in your assets folder
        let imageView = UIImageView(image: displayImage!)
        imageView.frame = CGRect(x: self.center.x/2, y: self.center.y/2, width: imageWidth, height: imageHeight)
        self.addSubview(imageView)
    }
    
    func addLabel(text: String, textAlignment: String) {
        let label = UILabel()
        switch textAlignment {
        case "center":
            label.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        case "top":
            label.frame = CGRect(x: 0, y: self.center.y * -0.75, width: self.bounds.size.width, height: self.bounds.size.height)
        case "bottom":
            label.frame = CGRect(x: 0, y: self.center.y * 0.75, width: self.bounds.size.width, height: self.bounds.size.height)
        default:
            label.frame = CGRect(x: 0, y: self.center.y, width: self.bounds.size.width, height: self.bounds.size.height)
        }
        
        label.textAlignment = .center
        label.text = text
        self.addSubview(label)
    }
    
    func addButton(buttonWidth: Int, buttonHeight: Int, buttonAlignment: String){
       
        switch buttonAlignment {
        case "center":
            button.frame = CGRect(x: 0, y: self.center.y * -0.75, width: self.bounds.size.width, height: self.bounds.size.height)
        case "top":
            button.frame = CGRect(x: 0, y: self.center.y * -0.75, width: self.bounds.size.width, height: self.bounds.size.height)
        case "bottom":
            button.frame = CGRect(x: 0, y: self.center.y * 0.75, width: self.bounds.size.width, height: self.bounds.size.height)
        default:
            button.frame = CGRect(x: 0, y: self.center.y * -0.75, width: self.bounds.size.width, height: self.bounds.size.height)
        }
        button.setTitle("Dismiss", for: .normal)
        self.addSubview(button)
    }
    @objc func buttonTapped() {
      self.removeFromSuperview()
    }
    
}

