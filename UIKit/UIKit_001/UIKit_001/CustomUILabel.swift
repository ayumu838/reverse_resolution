//
//  CustomUILabel.swift
//  UIKit_001
//
//  Created by 望月歩 on 2017/04/20.
//  Copyright © 2017年 望月歩. All rights reserved.
//

import UIKit

@IBDesignable
class CustomUILabel: UILabel {
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }

}
