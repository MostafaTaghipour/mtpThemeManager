//
//  Extensions.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit

extension Notification.Name {
    public static let ThemeDidChange = Notification.Name("themeChanged")
}

extension UIViewController {
    override open func awakeFromNib() {
        super.awakeFromNib()
        if let bgColor = ThemeManager.shared.backgroundColor {
            if view.backgroundColor != bgColor {
                view.backgroundColor = bgColor
            }
        } else {
            let when = DispatchTime.now() + 0.2
            DispatchQueue.main.asyncAfter(deadline: when) {
                if let bgColor = ThemeManager.shared.backgroundColor {
                    if self.view.backgroundColor != bgColor {
                        self.view.backgroundColor = bgColor
                    }
                }
            }
        }
    }
}

extension UIView {
    @IBInspectable dynamic var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }

    @IBInspectable dynamic var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    @IBInspectable dynamic var borderColor: UIColor? {
        set { layer.borderColor = newValue?.cgColor }
        get { return UIColor(cgColor: layer.borderColor!) }
    }
}

extension UITextField {
    @IBInspectable dynamic var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

extension UITextView {
    @IBInspectable dynamic var keyboardAppear: UIKeyboardAppearance {
        get {
            return keyboardAppearance
        }
        set {
            keyboardAppearance = newValue
        }
    }
}

// fixing Bug in XCode
// http://openradar.appspot.com/18448072
extension UIImageView {
    override open func awakeFromNib() {
        super.awakeFromNib()
        tintColorDidChange()
    }
}
