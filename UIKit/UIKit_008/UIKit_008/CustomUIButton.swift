//
//  CustomUIButton.swift
//  UIKit_008
//
//  Created by 望月歩 on 2017/04/22.
//  Copyright © 2017年 望月歩. All rights reserved.
//

import UIKit

@IBDesignable
class CustomUIButton: UIButton {
    @IBInspectable var cornerRadius : CGFloat = 0{
        didSet{
            self.layer.cornerRadius = self.cornerRadius
            if cornerRadius != 0 {
                self.layer.masksToBounds = true
            }
        }
    }
}
