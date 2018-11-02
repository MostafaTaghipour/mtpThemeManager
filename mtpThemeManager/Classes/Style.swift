//
//  Style.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit


public protocol Style {
    
}


//MARK:- StatusBarStyle
public struct StatusBarStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var style:UIStatusBarStyle = .default
    public var isHidden:Bool = false
    
    public init(backgroundColor:UIColor? = nil,
         style:UIStatusBarStyle = .default,
         isHidden:Bool = false) {
        
        self.backgroundColor=backgroundColor
        self.style=style
        self.isHidden=isHidden
    }
}

//MARK:- NavigationBarStyle
public struct NavigationBarStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var titleColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    public var barStyle:UIBarStyle = .default
    public var isTranslucent:Bool = true
    public var isHidden:Bool = false
    public var isTransparent:Bool = false
    public var isHairlineHidden:Bool = false
    
   public init(backgroundColor:UIColor? = nil,
         titleColor:UIColor? = nil,
         tintColor:UIColor? = nil,
         barStyle:UIBarStyle = .default,
         isTranslucent:Bool = true,
         isHidden:Bool = false,
         isTransparent:Bool = false,
         isHairlineHidden:Bool = false) {
        
        self.backgroundColor=backgroundColor
        self.titleColor=titleColor
        self.tintColor=tintColor
        self.barStyle=barStyle
        self.isTransparent=isTransparent
        self.isTranslucent=isTranslucent
        self.isHidden=isHidden
        self.isHairlineHidden=isHairlineHidden
    }
}

//MARK:- TabBarStyle
public struct TabBarStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var badgeColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    public var unselectedTintColor:UIColor? = nil
    public var barStyle:UIBarStyle = .default
    public var isTranslucent:Bool = true
    public var isTransparent:Bool = false
    public var isHairlineHidden:Bool = false
    
    public init(backgroundColor:UIColor? = nil,
         badgeColor:UIColor? = nil,
         tintColor:UIColor? = nil,
         unselectedTintColor:UIColor? = nil,
         barStyle:UIBarStyle = .default,
         isTranslucent:Bool = true,
         isTransparent:Bool = false,
         isHairlineHidden:Bool = false) {
        
        self.backgroundColor=backgroundColor
        self.badgeColor=badgeColor
        self.tintColor=tintColor
        self.unselectedTintColor=unselectedTintColor
        self.barStyle=barStyle
        self.isTransparent=isTransparent
        self.isTranslucent=isTranslucent
        self.isHairlineHidden=isHairlineHidden
    }
}


//MARK:- ToolbarStyle
public struct ToolbarStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    public var barStyle:UIBarStyle = .default
    public var isTranslucent:Bool = true
    public var isTransparent:Bool = false
    public var isHairlineHidden:Bool = false
    
    public init(backgroundColor:UIColor? = nil,
         tintColor:UIColor? = nil,
         barStyle:UIBarStyle = .default,
         isTranslucent:Bool = true,
         isTransparent:Bool = false,
         isHairlineHidden:Bool = false) {
        
        self.backgroundColor=backgroundColor
        self.tintColor=tintColor
        self.barStyle=barStyle
        self.isTransparent=isTransparent
        self.isTranslucent=isTranslucent
        self.isHairlineHidden=isHairlineHidden
    }
}


//MARK:- SearchBarStyle
public struct SearchBarStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    public var barStyle:UIBarStyle = .default
    public var searchBarStyle:UISearchBar.Style = .default
    public var isTranslucent:Bool = true
    public var isTransparent:Bool = false
    public var textFieldStyle:TextFieldStyle? = nil
    
    public init(backgroundColor:UIColor? = nil,
         tintColor:UIColor? = nil,
         barStyle:UIBarStyle = .default,
         searchStyle:UISearchBar.Style = .default,
         isTranslucent:Bool = true,
         isTransparent:Bool = false,
         textFieldStyle:TextFieldStyle? = nil) {
        
        self.backgroundColor=backgroundColor
        self.tintColor=tintColor
        self.barStyle=barStyle
        self.searchBarStyle=searchStyle
        self.isTransparent=isTransparent
        self.isTranslucent=isTranslucent
        self.textFieldStyle=textFieldStyle
    }
}



//MARK:- TextFieldStyle
public struct TextFieldStyle: Style {
    
    public var borderColor: UIColor?=nil
    public var borderWidth: CGFloat=0
    public var cornerRadius: CGFloat=0
    public var backgroundColor: UIColor?=nil
    public var textColor:UIColor? = nil
    public var placeholderColor:UIColor? = nil
    public var borderStyle:UITextField.BorderStyle = .roundedRect
    public var clearButtonMode:UITextField.ViewMode = .never
    
    public init(backgroundColor:UIColor? = nil,
         textColor:UIColor? = nil,
         borderColor:UIColor? = nil,
         borderWidth:CGFloat = 0,
         cornerRadius:CGFloat = 0,
         placeholderColor:UIColor? = nil,
         borderStyle:UITextField.BorderStyle = .roundedRect,
         clearButton:UITextField.ViewMode = .never) {
        
        self.backgroundColor=backgroundColor
        self.textColor=textColor
        self.borderColor=borderColor
        self.borderWidth=borderWidth
        self.cornerRadius=cornerRadius
        self.borderStyle=borderStyle
        self.clearButtonMode=clearButton
        self.placeholderColor=placeholderColor
    }
}


//MARK:- TextViewStyle
public struct TextViewStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var textColor:UIColor? = nil
    public var borderColor:UIColor? = nil
    public var borderWidth:CGFloat = 0
    public var cornerRadius:CGFloat = 0
    public var textContainerInset:UIEdgeInsets? = nil
    
    public init(backgroundColor:UIColor? = nil,
         textColor:UIColor? = nil,
         borderColor:UIColor? = nil,
         borderWidth:CGFloat = 0,
         cornerRadius:CGFloat = 0,
      textContainerInset:UIEdgeInsets? = nil) {
        
        self.backgroundColor=backgroundColor
        self.textColor=textColor
        self.borderColor=borderColor
        self.borderWidth=borderWidth
        self.cornerRadius=cornerRadius
        self.textContainerInset=textContainerInset
    }
}


//MARK:- ButtonStyle
public struct ButtonStyle: Style {

    public var backgroundColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    public var borderColor:UIColor? = nil
    public var borderWidth:CGFloat = 0
    public var cornerRadius:CGFloat = 0
    public var contentEdgeInsets:UIEdgeInsets? = nil
    
    public init(backgroundColor:UIColor? = nil,
         tintColor:UIColor? = nil,
         borderColor:UIColor? = nil,
         borderWidth:CGFloat = 0,
         cornerRadius:CGFloat = 0,
         contentEdgeInsets:UIEdgeInsets? = nil) {
        
        self.backgroundColor=backgroundColor
        self.tintColor=tintColor
        self.borderColor=borderColor
        self.borderWidth=borderWidth
        self.cornerRadius=cornerRadius
        self.contentEdgeInsets=contentEdgeInsets
    }
}



//MARK:- ActivityIndicatorViewStyle
public struct ActivityIndicatorViewStyle: Style {
    
    public var style: UIActivityIndicatorView.Style = .gray
    public var color:UIColor? = nil
    
    public init(style: UIActivityIndicatorView.Style = .gray,
         color:UIColor? = nil) {
        
        self.style=style
        self.color=color
    }
}


//MARK:- ScrollViewStyle
public struct ScrollViewStyle: Style {
    
    public var indicatorStyle: UIScrollView.IndicatorStyle = .default
    
    public init(indicatorStyle: UIScrollView.IndicatorStyle = .default) {
        self.indicatorStyle=indicatorStyle
    }
}


//MARK:- SegmentedControlStyle
public struct SegmentedControlStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    
    public init(backgroundColor:UIColor? = nil,
         tintColor:UIColor? = nil) {
        
        self.backgroundColor=backgroundColor
        self.tintColor=tintColor
    }
}


//MARK:- StepperStyle
public struct StepperStyle: Style {
    
    public var backgroundColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    
    public init(backgroundColor:UIColor? = nil,
         tintColor:UIColor? = nil) {
        
        self.backgroundColor=backgroundColor
        self.tintColor=tintColor
    }
}


//MARK:- PageControlStyle
public struct PageControlStyle: Style {
    
    public var pageIndicatorTintColor:UIColor? = nil
    public var currentPageIndicatorTintColor:UIColor? = nil
    
    public init(pageIndicatorTintColor:UIColor? = nil,
         currentPageIndicatorTintColor:UIColor? = nil) {
        
        self.pageIndicatorTintColor=pageIndicatorTintColor
        self.currentPageIndicatorTintColor=currentPageIndicatorTintColor
    }
}


//MARK:- ProgressViewStyle
public struct ProgressViewStyle: Style {
    
    public var progressTintColor:UIColor? = nil
    public var trackTintColor:UIColor? = nil
    public var style:UIProgressView.Style = .default
    
    public init(progressTintColor:UIColor? = nil,
         trackTintColor:UIColor? = nil,
         style:UIProgressView.Style = .default) {
        
        self.progressTintColor=progressTintColor
        self.trackTintColor=trackTintColor
        self.style=style
    }
}


//MARK:- SliderStyle
public struct SliderStyle: Style {
    
    public var minimumTrackTintColor:UIColor? = nil
    public var maximumTrackTintColor:UIColor? = nil
    public var thumbTintColor:UIColor? = nil
    
    public init(minimumTrackTintColor:UIColor? = nil,
         maximumTrackTintColor:UIColor? = nil,
         thumbTintColor:UIColor? = nil) {
        
        self.minimumTrackTintColor=minimumTrackTintColor
        self.maximumTrackTintColor=maximumTrackTintColor
        self.thumbTintColor=thumbTintColor
    }
}

//MARK:- SwitchStyle
public struct SwitchStyle: Style {
    
    public var thumbTintColor:UIColor? = nil
    public var onTintColor:UIColor? = nil
    public var tintColor:UIColor? = nil
    
    public init(tintColor:UIColor? = nil,
         onTintColor:UIColor? = nil,
         thumbTintColor:UIColor? = nil) {
        
        self.tintColor=tintColor
        self.onTintColor=onTintColor
        self.thumbTintColor=thumbTintColor
    }
}


//MARK:- KeyboardStyle
public struct KeyboardStyle: Style {
    
    public var appearance:UIKeyboardAppearance = .default
    
    public init(appearance:UIKeyboardAppearance = .default) {
        self.appearance=appearance
    }
}

