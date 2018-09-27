//
//  Themes.swift
//  mtpThemeManager_Example
//
//  Created by Mostafa Taghipour on 11/13/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import mtpThemeManager

protocol AppTheme:DayNightTheme {}

class RedTheme:AppTheme {
    required  init() {}
    var id: Int=1
    var displayName: String="Red"
    var tintColor: UIColor = .red
   
}

class BlueTheme:AppTheme {
    required  init() {}
    var id: Int=2
    var displayName: String="Blue"
    var tintColor: UIColor = .blue
}

extension AppTheme{
    var secondaryTextColor: UIColor {
        return UIColor.gray.withAlphaComponent(0.8)
    }
    
    var secondaryTextColorNight: UIColor {
        return UIColor.gray.withAlphaComponent(0.9)
    }
}

var currentTheme : AppTheme {
    return ThemeManager.shared.currentTheme as! AppTheme
}

var secondaryTextColor:UIColor{
    return ThemeManager.shared.isItNight ? currentTheme.secondaryTextColorNight : currentTheme.secondaryTextColor
}
