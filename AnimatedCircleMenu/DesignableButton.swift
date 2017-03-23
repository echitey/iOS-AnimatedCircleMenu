//
//  DesignableButton.swift
//  AnimatedCircleMenu
//
//  Created by Yawo Echitey on 3/23/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var border: CGFloat = 0{
        didSet{
            self.layer.borderWidth = border
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
