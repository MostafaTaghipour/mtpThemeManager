//
//  Style+Extensions.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/12/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit

extension UINavigationBar{
    public func setStyle(style:NavigationBarStyle) {
        tintColor = style.tintColor
        titleTextAttributes = style.titleColor != nil ? [NSAttributedString.Key.foregroundColor: style.titleColor!] : UINavigationBar.appearance().titleTextAttributes
        barStyle = style.barStyle
        isTranslucent = style.isTranslucent || style.isTransparent
        shadowImage = style.isHairlineHidden || style.isTransparent ? UIImage() : ThemeManager.shared.default_bar_shadow
        setBackgroundImage(style.isTransparent ? UIImage() : ThemeManager.shared.default_navigationBarBackground , for:.default)
        barTintColor = style.backgroundColor
        isHidden = style.isHidden
    }
}



extension UITabBar{
    public func setStyle(style:TabBarStyle) {
        
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
    public func setStyle(style:ToolbarStyle) {
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
    public func setStyle(style:SearchBarStyle) {

        barTintColor = style.backgroundColor
        tintColor = style.tintColor
        searchBarStyle = .minimal
        barStyle = style.barStyle
        isTranslucent = style.isTranslucent || style.isTransparent
        setBackgroundImage(style.isTransparent ? UIImage() : ThemeManager.shared.default_searchBarBackground, for: .any, barMetrics: .default)
        
      if let fieldStyle=style.textFieldStyle ,
        let textField=value(forKey: "searchField") as? UITextField{
            textField.backgroundColor = fieldStyle.backgroundColor ?? ThemeManager.shared.default_searchFieldColor
            textField.borderColor=fieldStyle.borderColor
            textField.borderWidth=fieldStyle.borderWidth
            textField.cornerRadius=fieldStyle.cornerRadius
            textField.clearButtonMode = fieldStyle.clearButtonMode
        }
        
    }
}

extension UITextField{
    public func setStyle(style:TextFieldStyle) {
        
        borderStyle = style.borderStyle
        textColor = style.textColor
        borderColor = style.borderColor
        cornerRadius = style.cornerRadius
        borderWidth = style.borderWidth
        backgroundColor = style.backgroundColor
        clearButtonMode = style.clearButtonMode
        placeHolderColor = style.placeholderColor
        
    }
}


extension UITextView{
    public func setStyle(style:TextViewStyle) {
        
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
    public func setStyle(style:ActivityIndicatorViewStyle) {
        self.style = style.style
        self.color = style.color
        
    }
}


extension UIScrollView{
    public func setStyle(style:ScrollViewStyle) {
        UIScrollView.appearance().indicatorStyle = style.indicatorStyle
    }
}


extension UISegmentedControl{
    public func setStyle(style:SegmentedControlStyle) {
        tintColor = style.tintColor
        backgroundColor = style.backgroundColor
    }
}



extension UIStepper{
    public func setStyle(style:StepperStyle) {
        tintColor = style.tintColor
        backgroundColor = style.backgroundColor
    }
}


extension UIPageControl{
    public func setStyle(style:PageControlStyle) {
        currentPageIndicatorTintColor = style.currentPageIndicatorTintColor
        pageIndicatorTintColor = style.pageIndicatorTintColor
    }
}



extension UIProgressView{
    public func setStyle(style:ProgressViewStyle) {
        progressTintColor = style.progressTintColor
        trackTintColor = style.trackTintColor
        progressViewStyle = style.style
    }
}


extension UISlider{
    public func setStyle(style:SliderStyle) {
        minimumTrackTintColor = style.minimumTrackTintColor
        thumbTintColor = style.thumbTintColor
        maximumTrackTintColor = style.maximumTrackTintColor
    }
}


extension UISwitch{
    public func setStyle(style:SwitchStyle) {
        onTintColor = style.onTintColor
        thumbTintColor = style.thumbTintColor
        tintColor = style.tintColor
    }
}


extension UIButton{
    public func setStyle(style:ButtonStyle) {
        tintColor = style.tintColor
        borderColor = style.borderColor
        cornerRadius = style.cornerRadius
        borderWidth = style.borderWidth
        backgroundColor = style.backgroundColor
        contentEdgeInsets = style.contentEdgeInsets ?? ThemeManager.shared.default_buttonContentInsets
        clipsToBounds=true
    }
}

