//
//  MBIBDesignableExtension.swift
//  IBDesignable
//
//  Created by 张磊 on 15/4/29.
//  Copyright (c) 2015年 MakeZL. All rights reserved.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(CGColor: layer.borderColor)!
        }
        set {
            layer.borderColor = newValue.CGColor!
        }
    }
    
    @IBInspectable var onePx: Bool {
        get {
            return self.onePx
        }
        set {
            if (onePx == true){
                self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, 1 / UIScreen.mainScreen().scale)
            }
        }
    }
    
    
}