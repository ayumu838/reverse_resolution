//
//  CustomUIButton.swift
//  UIKit_010
//
//  Created by 望月歩 on 2017/04/23.
//  Copyright © 2017年 望月歩. All rights reserved.
//

import UIKit

@IBDesignable
class CustomUIButton: UIButton {
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            if self.cornerRadius != 0 {
                self.layer.cornerRadius = self.cornerRadius
                self.layer.masksToBounds = true
            }
        }
    }
    
}
