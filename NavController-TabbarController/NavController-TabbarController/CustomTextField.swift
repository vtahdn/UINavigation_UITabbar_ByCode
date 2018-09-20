//
//  CustomTextField.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/15/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configure()
    }
    
    func configure() {
        backgroundColor = UIColor.init(red: 221, green: 220, blue: 218, alpha: 0.3)
        textColor = UIColor.whiteColor()
        layer.cornerRadius = 4.0
        textAlignment = .Left
        font = UIFont.init(name: "SFUIText-Light", size: 14)
        contentVerticalAlignment = .Center
        
        switch tag {
        case 101:
            createLeftView("TextField-UserName")
            configurePlaceHolderText("USERNAME", fontName: "SFUIText-Light", fontSize: 14)
        case 102:
            createLeftView("TextFieldPassword")
            configurePlaceHolderText("........", fontName: "SFUIText-Bold", fontSize: 14)
            secureTextEntry = true
        case 103:
            createLeftView("EMAIL")
            configurePlaceHolderText("EMAIL", fontName: "SFUIText-Light", fontSize: 14)
        case 104:
            createLeftView("Confirm")
            configurePlaceHolderText("CONFIRM PASSWORD", fontName: "SFUIText-Light", fontSize: 14)
            secureTextEntry = true
        case 105:
            createLeftView("TextFieldPassword")
            configurePlaceHolderText("PASSWORD", fontName: "SFUIText-Light", fontSize: 14)
            secureTextEntry = true
        default:
            print("no textfield")
        }
        
        leftViewMode = .Always
    }
    
    func createLeftView(imageName : String){
        let leftIconView = UIImageView(image: UIImage(named: imageName))
        
        let paddingView = UIView(frame : CGRect(x: 0, y: 0, width: 44, height: 45))
        
        leftIconView.center = paddingView.center
        
        paddingView.addSubview(leftIconView)
        
        leftView = paddingView
    }
    
    func configurePlaceHolderText(placeHolderInput : String, fontName : String, fontSize : CGFloat){
        
        let attributeDict = [NSFontAttributeName : UIFont.init(name: fontName, size: fontSize)!,NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        attributedPlaceholder = NSAttributedString(string:placeHolderInput, attributes:attributeDict)
    
    }
}
