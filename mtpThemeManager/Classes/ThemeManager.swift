//
//  ThemeManager.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/2/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit

final class ThemeManager {
    
    private var _currentTheme:Theme?
    public var currentTheme:Theme?{
        return _currentTheme
    }
    
    
    private var _enableNightModel:Bool=false
    public var enableNightModel:Bool{
        get{
            return _enableNightModel
        }
        set{
            if let theme = _currentTheme as? DayNightTheme{
                let needUpdate = _enableNightModel != newValue
                if needUpdate{
                    self.setTheme(dayNight: theme, nightMode: newValue)
                }
            }
        }
    }
    
    lazy var  availableThemes:[Theme]={
        var themes:[Theme]=[]
        let classes=getClassList()
        
        for cls in classes {
            if let theme = cls as? Theme.Type{
                themes.append(theme.init())
            }
        }
        
        return themes
    }()
    
    
    // Can't init is singleton
    private init() {
        setupDefaults()
    }
    
    // Shared Instance
    public static let shared = ThemeManager()
    
    
    // set theme
    func setTheme(theme:Theme){
        guard _currentTheme != theme else {
            return
        }
        
        self._currentTheme=theme
        
        NotificationCenter.default.post(name: NSNotification.Name.ThemeDidChange, object: theme)
        
        
        customizeTheme(tintColor:theme.tintColor,
                       textColor: theme.primaryTextColor,
                       statusBarStyle: theme.statusBarStyle,
                       navigationBarStyle:theme.navigationBarStyle,
                       tabBarStyle: theme.tabBarStyle,
                       toolbarStyle: theme.toolbarStyle,
                       searchBarStyle: theme.searchBarStyle,
                       keyboardStyle: theme.keyboardStyle,
                       textFieldStyle: theme.textFieldStyle,
                       textViewStyle: theme.textViewStyle,
                       activityIndicatorViewStyle: theme.activityIndicatorViewStyle,
                       progressViewStyle:theme.progressViewStyle,
                       stepperStyle:theme.stepperStyle,
                       segmentedControlStyle:theme.segmentedControlStyle,
                       scrollViewStyle:theme.scrollViewStyle,
                       sliderStyle:theme.sliderStyle,
                       switchStyle:theme.switchStyle,
                       pageControlStyle:theme.pageControlStyle,
                       buttonStyle: theme.buttonStyle)
    }
    
    
    //set theme night mode
    func setTheme(dayNight theme:DayNightTheme,nightMode:Bool? = nil){
        
        let isNightModeEnable:Bool = nightMode ?? enableNightModel
        
        guard _currentTheme != theme || isNightModeEnable != _enableNightModel else {
            return
        }
        
        self._currentTheme=theme
        _enableNightModel=isNightModeEnable
        
        NotificationCenter.default.post(name: NSNotification.Name.ThemeDidChange, object: theme)
        
        customizeTheme(tintColor:enableNightModel ? theme.tintColorNight : theme.tintColor,
                       textColor: enableNightModel ? theme.primaryTextColorNight : theme.primaryTextColor,
                       statusBarStyle: enableNightModel ? theme.statusBarStyleNight : theme.statusBarStyle,
                       navigationBarStyle:enableNightModel ? theme.navigationBarStyleNight : theme.navigationBarStyle,
                       tabBarStyle: enableNightModel ? theme.tabBarStyleNight : theme.tabBarStyle,
                       toolbarStyle: enableNightModel ? theme.toolbarStyleNight : theme.toolbarStyle,
                       searchBarStyle: enableNightModel ? theme.searchBarStyleNight : theme.searchBarStyle,
                       keyboardStyle: enableNightModel ? theme.keyboardStyleNight : theme.keyboardStyle,
                       textFieldStyle: enableNightModel ? theme.textFieldStyleNight : theme.textFieldStyle,
                       textViewStyle: enableNightModel ? theme.textViewStyleNight : theme.textViewStyle,
                       activityIndicatorViewStyle: enableNightModel ? theme.activityIndicatorViewStyleNight : theme.activityIndicatorViewStyle,
                       progressViewStyle:enableNightModel ? theme.progressViewStyleNight : theme.progressViewStyle,
                       stepperStyle:enableNightModel ? theme.stepperStyleNight : theme.stepperStyle,
                       segmentedControlStyle:enableNightModel ? theme.segmentedControlStyleNight : theme.segmentedControlStyle,
                       scrollViewStyle:enableNightModel ? theme.scrollViewStyleNight : theme.scrollViewStyle,
                       sliderStyle:enableNightModel ? theme.sliderStyleNight : theme.sliderStyle,
                       switchStyle:enableNightModel ? theme.switchStyleNight : theme.switchStyle,
                       pageControlStyle:enableNightModel ? theme.pageControlStyleNight : theme.pageControlStyle,
                       buttonStyle: enableNightModel ? theme.buttonStyleNight : theme.buttonStyle)
    }
    
    
    
    
    
    private func getClassList() -> [AnyClass] {
        let expectedClassCount = objc_getClassList(nil, 0)
        let allClasses = UnsafeMutablePointer<AnyClass?>.allocate(capacity: Int(expectedClassCount))
        let autoreleasingAllClasses = AutoreleasingUnsafeMutablePointer<AnyClass>(allClasses)
        let actualClassCount:Int32 = objc_getClassList(autoreleasingAllClasses, expectedClassCount)
        
        var classes = [AnyClass]()
        for i in 0 ..< actualClassCount {
            if let currentClass: AnyClass = allClasses[Int(i)] {
                classes.append(currentClass)
            }
        }
        
        allClasses.deallocate(capacity: Int(expectedClassCount))
        
        return classes
    }
    
    
    
    
    
    //MARK:- default values
    private func setupDefaults() {
        default_tintColor = (UIApplication.shared.delegate as? AppDelegate)?.window?.tintColor
        default_navigationBarBackground = UINavigationBar.appearance().backgroundImage(for: UIBarMetrics.default)
        default_navigationBarTitleAttributes = UINavigationBar.appearance().titleTextAttributes
        default_bar_shadow = UINavigationBar.appearance().shadowImage
        default_tabBarBackground = UITabBar.appearance().backgroundImage
        default_searchBarBackground = UISearchBar.appearance().backgroundImage(for: .any, barMetrics: .default)
        default_toolbarBackground = UIToolbar.appearance().backgroundImage(forToolbarPosition: .any, barMetrics: .default)
        default_searchFieldColor=UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).backgroundColor
       default_buttonContentInsets = UIButton.appearance().contentEdgeInsets
        default_textViewContainrInsets = UITextView.appearance().textContainerInset
    }
    
    var default_tintColor:UIColor?
    var default_navigationBarBackground:UIImage?
    var default_navigationBarTitleAttributes:[NSAttributedStringKey : Any]?
    var default_tabBarBackground:UIImage?
    var default_toolbarBackground:UIImage?
    var default_searchBarBackground:UIImage?
    var default_bar_shadow:UIImage?
    var default_searchFieldColor:UIColor?
    var default_buttonContentInsets:UIEdgeInsets!
    var default_textViewContainrInsets:UIEdgeInsets!
}


/*
 . new style
 . theme var
 . theme extension var
 . default value
 . appearance
 . set theme
 . properties
 */


