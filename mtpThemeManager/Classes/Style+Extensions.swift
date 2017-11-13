//
//  Style+Extensions.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/12/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit

extension UINavigationBar{
    func setStyle(style:NavigationBarStyle) {
        tintColor = style.tintColor
        titleTextAttributes = style.titleColor != nil ? [NSAttributedStringKey.foregroundColor: style.titleColor!] : ThemeManager.shared.default_navigationBarTitleAttributes
        barStyle = style.barStyle
        isTranslucent = style.isTranslucent || style.isTransparent
        shadowImage = style.isHairlineHidden || style.isTransparent ? UIImage() : ThemeManager.shared.default_bar_shadow
        setBackgroundImage(style.isTransparent ? UIImage() : ThemeManager.shared.default_navigationBarBackground , for:.default)
        barTintColor = style.backgroundColor
        isHidden = style.isHidden
    }
}



extension UITabBar{
    func setStyle(style:TabBarStyle) {
        
        if #available(iOS 10, *),let color=style.unselectedTintColor {
            unselectedItemTintColor = color
        }
        
        tintColor = style.tintColor
        barTintColor = style.backgroundColor
        barStyle = style.barStyle
        isTranslucent = style.isTranslucent || style.isTransparent
        shadowImage = style.isHairlineHidden || style.isTransparent ? nil : ThemeManager.shared.default_bar_shadow
        clipsToBounds = style.isHairlineHidden || style.isTransparent
        backgroundImage=style.isTransparent ? UIImage() : ThemeManager.shared.default_tabBarBackground
        
    }
}


extension UIToolbar{
    func setStyle(style:ToolbarStyle) {
        tintColor = style.tintColor
        barTintColor = style.backgroundColor
        barStyle = style.barStyle
        isTranslucent = style.isTranslucent || style.isTransparent
        setShadowImage(style.isHairlineHidden || style.isTransparent ? UIImage() : ThemeManager.shared.default_bar_shadow, forToolbarPosition: .any)
        clipsToBounds = style.isHairlineHidden || style.isTransparent
        setBackgroundImage(style.isTransparent ? UIImage() : ThemeManager.shared.default_toolbarBackground, forToolbarPosition: .any, barMetrics: .default)
        
    }
}


extension UISearchBar{
    func setStyle(style:SearchBarStyle) {
        
        
        
        barTintColor = style.backgroundColor
        tintColor = style.tintColor
        searchBarStyle = .minimal
        barStyle = style.barStyle
        isTranslucent = style.isTranslucent || style.isTransparent
        setBackgroundImage(style.isTransparent ? UIImage() : ThemeManager.shared.default_searchBarBackground, for: .any, barMetrics: .default)
        
        if let fieldStyle=style.textFieldStyle {
            let fieldAppearence=UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self])
            fieldAppearence.backgroundColor = fieldStyle.backgroundColor ?? ThemeManager.shared.default_searchFieldColor
            fieldAppearence.borderColor=fieldStyle.borderColor
            fieldAppearence.borderWidth=fieldStyle.borderWidth
            fieldAppearence.cornerRadius=fieldStyle.cornerRadius
            fieldAppearence.clearButtonMode = fieldStyle.clearButtonMode
        }
        
    }
}

extension UITextField{
    func setStyle(style:TextFieldStyle) {
        
        borderStyle = style.borderStyle
        textColor = style.textColor
        borderColor = style.borderColor
        cornerRadius = style.cornerRadius
        borderWidth = style.borderWidth
        backgroundColor = style.backgroundColor
        clearButtonMode = style.clearButtonMode
        UILabel.appearance(whenContainedInInstancesOf: [UITextField.self]).textColor = style.placeholderColor
        
    }
}


extension UITextView{
    func setStyle(style:TextViewStyle) {
        
        textColor = style.textColor
        borderColor = style.borderColor
        cornerRadius = style.cornerRadius
        borderWidth = style.borderWidth
        backgroundColor = style.backgroundColor
        textContainerInset = style.textContainerInset ?? ThemeManager.shared.default_textViewContainrInsets
        clipsToBounds=true
        
    }
    
}


extension UIActivityIndicatorView{
    func setStyle(style:ActivityIndicatorViewStyle) {
        activityIndicatorViewStyle = style.style
        color = style.color
        
    }
}


extension UIScrollView{
    func setStyle(style:ScrollViewStyle) {
        UIScrollView.appearance().indicatorStyle = style.indicatorStyle
    }
}


extension UISegmentedControl{
    func setStyle(style:SegmentedControlStyle) {
        tintColor = style.tintColor
        backgroundColor = style.backgroundColor
    }
}



extension UIStepper{
    func setStyle(style:StepperStyle) {
        tintColor = style.tintColor
        backgroundColor = style.backgroundColor
    }
}


extension UIPageControl{
    func setStyle(style:PageControlStyle) {
        currentPageIndicatorTintColor = style.currentPageIndicatorTintColor
        pageIndicatorTintColor = style.pageIndicatorTintColor
    }
}



extension UIProgressView{
    func setStyle(style:ProgressViewStyle) {
        progressTintColor = style.progressTintColor
        trackTintColor = style.trackTintColor
        progressViewStyle = style.style
    }
}


extension UISlider{
    func setStyle(style:SliderStyle) {
        minimumTrackTintColor = style.minimumTrackTintColor
        thumbTintColor = style.thumbTintColor
        maximumTrackTintColor = style.maximumTrackTintColor
    }
}


extension UISwitch{
    func setStyle(style:SwitchStyle) {
        onTintColor = style.onTintColor
        thumbTintColor = style.thumbTintColor
        tintColor = style.tintColor
    }
}


extension UIButton{
    func setStyle(style:ButtonStyle) {
        tintColor = style.tintColor
        borderColor = style.borderColor
        cornerRadius = style.cornerRadius
        borderWidth = style.borderWidth
        backgroundColor = style.backgroundColor
        contentEdgeInsets = style.contentEdgeInsets ?? ThemeManager.shared.default_buttonContentInsets
        clipsToBounds=true
    }
}

