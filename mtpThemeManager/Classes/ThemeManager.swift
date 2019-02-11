//
//  ThemeManager.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/2/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit

public class ThemeManager {
    
    private var _currentTheme:Theme?
    public var currentTheme:Theme?{
        return _currentTheme
    }
    
    public private(set) var isItNight:Bool = false
    
    private var _nightModeStatus:NightModeStatus = .disable
    public var nightModeStatus:NightModeStatus {
        get{
            return _nightModeStatus
        }
        set{
            if let theme = _currentTheme as? DayNightTheme{
                let needUpdate = _nightModeStatus != newValue
                if needUpdate{
                    self.setTheme(dayNight: theme, nightModeStatus: newValue)
                }
            }
        }
    }
    
    public lazy var  availableThemes:[Theme]={
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
    public func setTheme(theme:Theme){
        guard _currentTheme != theme else {
            return
        }
        
        self._currentTheme=theme
        
        NotificationCenter.default.post(name: NSNotification.Name.ThemeDidChange, object: theme)
        
        
        customizeTheme(tintColor:theme.tintColor,
                       textColor: theme.textColor,
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
    public func setTheme(dayNight theme:DayNightTheme,nightModeStatus:NightModeStatus? = nil){
        
        let nightStatus = nightModeStatus ?? self.nightModeStatus
        
        guard _currentTheme != theme || nightStatus != self._nightModeStatus else {
            return
        }
        
        self._currentTheme=theme
        _nightModeStatus=nightStatus
        isItNight = checkisItNight(nightModeStatus: nightStatus)
        
        NotificationCenter.default.post(name: NSNotification.Name.ThemeDidChange, object: theme)
        
        customizeTheme(tintColor:isItNight ? theme.tintColorNight : theme.tintColor,
                       textColor: isItNight ? theme.textColorNight : theme.textColor,
                       statusBarStyle: isItNight ? theme.statusBarStyleNight : theme.statusBarStyle,
                       navigationBarStyle:isItNight ? theme.navigationBarStyleNight : theme.navigationBarStyle,
                       tabBarStyle: isItNight ? theme.tabBarStyleNight : theme.tabBarStyle,
                       toolbarStyle: isItNight ? theme.toolbarStyleNight : theme.toolbarStyle,
                       searchBarStyle: isItNight ? theme.searchBarStyleNight : theme.searchBarStyle,
                       keyboardStyle: isItNight ? theme.keyboardStyleNight : theme.keyboardStyle,
                       textFieldStyle: isItNight ? theme.textFieldStyleNight : theme.textFieldStyle,
                       textViewStyle: isItNight ? theme.textViewStyleNight : theme.textViewStyle,
                       activityIndicatorViewStyle: isItNight ? theme.activityIndicatorViewStyleNight : theme.activityIndicatorViewStyle,
                       progressViewStyle:isItNight ? theme.progressViewStyleNight : theme.progressViewStyle,
                       stepperStyle:isItNight ? theme.stepperStyleNight : theme.stepperStyle,
                       segmentedControlStyle:isItNight ? theme.segmentedControlStyleNight : theme.segmentedControlStyle,
                       scrollViewStyle:isItNight ? theme.scrollViewStyleNight : theme.scrollViewStyle,
                       sliderStyle:isItNight ? theme.sliderStyleNight : theme.sliderStyle,
                       switchStyle:isItNight ? theme.switchStyleNight : theme.switchStyle,
                       pageControlStyle:isItNight ? theme.pageControlStyleNight : theme.pageControlStyle,
                       buttonStyle: isItNight ? theme.buttonStyleNight : theme.buttonStyle)
    }
    
    
    private func checkisItNight(nightModeStatus:NightModeStatus) -> Bool {
        switch nightModeStatus {
        case .disable:
            return false
        case .enable:
            return true
        case .auto:
            
            let hour = Calendar.current.component(.hour, from: Date())
            
            switch hour {
                case 6..<19 : return false
                default: return true
            }
        }
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
        
        allClasses.deallocate()
            
            //.deallocate(capacity: Int(expectedClassCount))
        
        return classes
    }
    
    
    
    
    
    //MARK:- default values
    private func setupDefaults() {
        if let window = (UIApplication.shared.delegate)?.window{
            default_tintColor = window?.tintColor
        }
        default_navigationBarBackground = UINavigationBar.appearance().backgroundImage(for: UIBarMetrics.default)
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
 . style extension
 */


