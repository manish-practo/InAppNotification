//
//  UIColor+Init.swift
//  InAppNotification
//
//  Created by Manish Pandey on 07/04/21.
//

extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
}
