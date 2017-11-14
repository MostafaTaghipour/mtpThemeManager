//
//  Helpers.swift
//  mtpThemeManager_Example
//
//  Created by Mostafa Taghipour on 11/14/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit


extension UIPickerView {
    private struct associationKey{
        static var selectorColorAssociationKey: UInt8 = 0
    }
    
    
    @IBInspectable dynamic var selectorColor: UIColor? {
        get {
            return objc_getAssociatedObject(self, &associationKey.selectorColorAssociationKey) as? UIColor
        }
        set(newValue) {
            objc_setAssociatedObject(self, &associationKey.selectorColorAssociationKey, newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    open override func didAddSubview(_ subview: UIView) {
        super.didAddSubview(subview)
        
        if let color = selectorColor {
            if subview.bounds.height < 1.0 {
                subview.backgroundColor = color
            }
        }
    }
    
    
}
