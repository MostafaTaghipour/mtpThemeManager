//
//  ThemeManager+Appearance.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit


extension ThemeManager{
    
    func customizeTheme(tintColor:UIColor,
                        textColor:UIColor,
                        statusBarStyle:StatusBarStyle,
                        navigationBarStyle:NavigationBarStyle,
                        tabBarStyle:TabBarStyle,
                        toolbarStyle:ToolbarStyle,
                        searchBarStyle:SearchBarStyle,
                        keyboardStyle:KeyboardStyle,
                        textFieldStyle:TextFieldStyle,
                        textViewStyle:TextViewStyle,
                        activityIndicatorViewStyle:ActivityIndicatorViewStyle,
                        progressViewStyle:ProgressViewStyle,
                        stepperStyle:StepperStyle,
                        segmentedControlStyle:SegmentedControlStyle,
                        scrollViewStyle:ScrollViewStyle,
                        sliderStyle:SliderStyle,
                        switchStyle:SwitchStyle,
                        pageControlStyle:PageControlStyle,
                        buttonStyle:ButtonStyle){
        
        self.setTintColor(color: tintColor)
        self.setTextColor(color: textColor)
        self.setButtonStyle(style: buttonStyle)
        self.setNavigationBarStyle(style: navigationBarStyle)
        self.setTabBarStyle(style: tabBarStyle)
        self.setToolbarStyle(style: toolbarStyle)
        self.setStatusBarStyle(style: statusBarStyle)
        self.setKeyboardStyle(style: keyboardStyle)
        self.setTextFieldStyle(style: textFieldStyle)
        self.setSearchBarStyle(style: searchBarStyle)
        self.setTextViewStyle(style: textViewStyle)
        self.setActivityIndicatorViewStyle(style: activityIndicatorViewStyle)
        self.setSliderStyle(style: sliderStyle)
        self.setSwitchStyle(style: switchStyle)
        self.setStepperStyle(style: stepperStyle)
        self.setScrollViewStyle(style: scrollViewStyle)
        self.setSegmentedControlStyle(style: segmentedControlStyle)
        self.setPageControlStyle(style: pageControlStyle)
        self.setProgressViewStyle(style: progressViewStyle)
        
    }
    
    private func resetButtonAppearance(_ btnAppearance: UIButton) {
        btnAppearance.backgroundColor=nil
        btnAppearance.borderColor=nil
        btnAppearance.borderWidth=0
        btnAppearance.tintColor=nil
        btnAppearance.cornerRadius=0
        btnAppearance.contentEdgeInsets = default_buttonContentInsets
    }
    
    private func setTintColor(color:UIColor){
        if let window = (UIApplication.shared.delegate)?.window{
            window?.tintColor=color
        }
    }
    
    private func setTextColor(color:UIColor){
        UILabel.appearance().textColor=color
    }
    
    
    /// setNavigationBarStyle
    ///
    /// - Parameter style: NavigationBarStyle
    private func setNavigationBarStyle(style:NavigationBarStyle) {
        
        let btnAppearance = UIButton.appearance(whenContainedInInstancesOf: [UINavigationBar.self])
        resetButtonAppearance(btnAppearance)
        
        
        let apperance = UINavigationBar.appearance()
        
        var titleAttr = apperance.titleTextAttributes ?? [:]
        if let titleColor = style.titleColor{
            titleAttr.updateValue(titleColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        else{
            titleAttr.removeValue(forKey: NSAttributedString.Key.foregroundColor)
        }
        apperance.titleTextAttributes = titleAttr
        
        
        let buttonBarAppearance=UIBarButtonItem.appearance(whenContainedInInstancesOf: [UINavigationBar.self])
        var barButtonTitleAttr = buttonBarAppearance.titleTextAttributes(for: .normal) ?? [:]
        if let buttonColor=style.tintColor{
            barButtonTitleAttr.updateValue(buttonColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        else{
            barButtonTitleAttr.updateValue(tintColor!, forKey: NSAttributedString.Key.foregroundColor)
        }
        let convertedAttributes = Dictionary(uniqueKeysWithValues:
            barButtonTitleAttr.lazy.map { ($0.key, $0.value) }
        )
        buttonBarAppearance.setTitleTextAttributes(convertedAttributes, for: .normal)
        
        
        apperance.barStyle = style.barStyle
        apperance.isTranslucent = style.isTranslucent || style.isTransparent
        apperance.shadowImage = style.isHairlineHidden || style.isTransparent ? UIImage() : default_bar_shadow
        apperance.setBackgroundImage(style.isTransparent ? UIImage() : default_navigationBarBackground , for:.default)
        apperance.barTintColor = style.backgroundColor
        apperance.tintColor = style.tintColor
        apperance.isHidden = style.isHidden
        
    }
    
    
    ///You need to add below key in your Info.plist file:
    /// View controller-based status bar appearance with boolean value set to NO
    ///
    /// - Parameter style: StatusBarStyle
    private func setStatusBarStyle(style:StatusBarStyle) {
        
        UIApplication.shared.statusBarStyle = style.style
        UIApplication.shared.isStatusBarHidden = style.isHidden
        
        if let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView {
            statusBar.backgroundColor = style.backgroundColor
        }
    }
    
    
    /// setKeyboardStyle
    ///
    /// - Parameter style: KeyboardStyle
    private func setKeyboardStyle(style:KeyboardStyle) {
        UITextField.appearance().keyboardAppearance = style.appearance
        UITextView.appearance().keyboardAppear = style.appearance
    }
    
    
    /// setTabBarStyle
    ///
    /// - Parameter style: TabBarStyle
    private func setTabBarStyle(style:TabBarStyle) {
        
        let btnAppearance = UIButton.appearance(whenContainedInInstancesOf: [UITabBar.self])
        resetButtonAppearance(btnAppearance)
        
        let apperance = UITabBar.appearance()
        
        if #available(iOS 10, *),let color=style.badgeColor {
            UITabBarItem.appearance().badgeColor = color
        }
        
        if #available(iOS 10, *),let color=style.unselectedTintColor {
            apperance.unselectedItemTintColor = color
        }
        
        apperance.tintColor = style.tintColor
        apperance.barTintColor = style.backgroundColor
        apperance.barStyle = style.barStyle
        apperance.isTranslucent = style.isTranslucent || style.isTransparent
        apperance.shadowImage = style.isHairlineHidden || style.isTransparent ? nil : default_bar_shadow
        apperance.clipsToBounds = style.isHairlineHidden || style.isTransparent
        apperance.backgroundImage=style.isTransparent ? UIImage() : default_tabBarBackground
        
    }
    
    
    
    /// setToolbarStyle
    ///
    /// - Parameter style: ToolbarStyle
    private func setToolbarStyle(style:ToolbarStyle) {
        
        let btnAppearance = UIButton.appearance(whenContainedInInstancesOf: [UIToolbar.self])
        resetButtonAppearance(btnAppearance)
        
        let apperance = UIToolbar.appearance()
        
        
        apperance.tintColor = style.tintColor
        apperance.barTintColor = style.backgroundColor
        apperance.barStyle = style.barStyle
        apperance.isTranslucent = style.isTranslucent || style.isTransparent
        apperance.setShadowImage(style.isHairlineHidden || style.isTransparent ? UIImage() : default_bar_shadow, forToolbarPosition: .any)
        apperance.clipsToBounds = style.isHairlineHidden || style.isTransparent
        apperance.setBackgroundImage(style.isTransparent ? UIImage() : default_toolbarBackground, forToolbarPosition: .any, barMetrics: .default)
        
    }
    
    
    /// setSearchBarStyle
    ///
    /// - Parameter style: SearchBarStyle
    private func setSearchBarStyle(style:SearchBarStyle) {
        
        let apperance = UISearchBar.appearance()
        
        apperance.barTintColor = style.backgroundColor
        apperance.tintColor = style.tintColor
        apperance.searchBarStyle = .minimal
        apperance.barStyle = style.barStyle
        apperance.isTranslucent = style.isTranslucent || style.isTransparent
        apperance.setBackgroundImage(style.isTransparent ? UIImage() : default_searchBarBackground, for: .any, barMetrics: .default)
        
        if let fieldStyle=style.textFieldStyle {
            let fieldAppearence=UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self])
            fieldAppearence.backgroundColor = fieldStyle.backgroundColor ?? default_searchFieldColor
            fieldAppearence.borderColor=fieldStyle.borderColor
            fieldAppearence.borderWidth=fieldStyle.borderWidth
            fieldAppearence.cornerRadius=fieldStyle.cornerRadius
            fieldAppearence.clearButtonMode = fieldStyle.clearButtonMode
        }
        
    }
    
    /// setTextFieldStyle
    ///
    /// - Parameter style: TextFieldStyle
    private func setTextFieldStyle(style:TextFieldStyle) {
        
        let apperance = UITextField.appearance()
        
        apperance.borderStyle = style.borderStyle
        apperance.textColor = style.textColor
        apperance.borderColor = style.borderColor
        apperance.cornerRadius = style.cornerRadius
        apperance.borderWidth = style.borderWidth
        apperance.backgroundColor = style.backgroundColor
        apperance.clearButtonMode = style.clearButtonMode
        UILabel.appearance(whenContainedInInstancesOf: [UITextField.self]).textColor = style.placeholderColor
        
    }
    
    
    /// setTextViewStyle
    ///
    /// - Parameter style: TextViewStyle
    private func setTextViewStyle(style:TextViewStyle) {
        
        let apperance = UITextView.appearance()
        
        apperance.textColor = style.textColor
        apperance.borderColor = style.borderColor
        apperance.cornerRadius = style.cornerRadius
        apperance.borderWidth = style.borderWidth
        apperance.backgroundColor = style.backgroundColor
        apperance.textContainerInset = style.textContainerInset ?? default_textViewContainrInsets
        apperance.clipsToBounds=true
        
    }
    
    
    /// setActivityIndicatorViewStyle
    ///
    /// - Parameter style: ActivityIndicatorViewStyle
    private func setActivityIndicatorViewStyle(style:ActivityIndicatorViewStyle) {
        
        let apperance = UIActivityIndicatorView.appearance()
        
        apperance.style = style.style
        apperance.color = style.color
        
    }
    
    
    /// setScrollViewStyle
    ///
    /// - Parameter style: ScrollViewStyle
    private func setScrollViewStyle(style:ScrollViewStyle) {
        UIScrollView.appearance().indicatorStyle = style.indicatorStyle
    }
    
    
    
    /// setSegmentedControlStyle
    ///
    /// - Parameter style: SegmentedControlStyle
    private func setSegmentedControlStyle(style:SegmentedControlStyle) {
        
        let appearance = UISegmentedControl.appearance()
        
        appearance.tintColor = style.tintColor
        appearance.backgroundColor = style.backgroundColor
    }
    
    
    
    /// setStepperStyle
    ///
    /// - Parameter style: StepperStyle
    private func setStepperStyle(style:StepperStyle) {
        
        let btnAppearance = UIButton.appearance(whenContainedInInstancesOf: [UIStepper.self])
        resetButtonAppearance(btnAppearance)
        
        let appearance = UIStepper.appearance()
        
        appearance.tintColor = style.tintColor
        appearance.backgroundColor = style.backgroundColor
    }
    
    
    /// setPageControlStyle
    ///
    /// - Parameter style: PageControlStyle
    private func setPageControlStyle(style:PageControlStyle) {
        let appearance = UIPageControl.appearance()
        appearance.currentPageIndicatorTintColor = style.currentPageIndicatorTintColor
        appearance.pageIndicatorTintColor = style.pageIndicatorTintColor
    }
    
    
    
    /// setProgressViewStyle
    ///
    /// - Parameter style: ProgressViewStyle
    private func setProgressViewStyle(style:ProgressViewStyle) {
        let appearance = UIProgressView.appearance()
        appearance.progressTintColor = style.progressTintColor
        appearance.trackTintColor = style.trackTintColor
        appearance.progressViewStyle = style.style
    }
    
    
    /// setSliderStyle
    ///
    /// - Parameter style: SliderStyle
    private func setSliderStyle(style:SliderStyle) {
        let appearance = UISlider.appearance()
        appearance.minimumTrackTintColor = style.minimumTrackTintColor
        appearance.thumbTintColor = style.thumbTintColor
        appearance.maximumTrackTintColor = style.maximumTrackTintColor
    }
    
    
    /// setSwitchStyle
    ///
    /// - Parameter style: SwitchStyle
    private func setSwitchStyle(style:SwitchStyle) {
        let appearance = UISwitch.appearance()
        
        appearance.onTintColor = style.onTintColor
        appearance.thumbTintColor = style.thumbTintColor
        appearance.tintColor = style.tintColor
        
    }
    
    
    /// setButtonStyle
    ///
    /// - Parameter style: ButtonStyle
    private func setButtonStyle(style:ButtonStyle) {
        let appearance = UIButton.appearance()
        
        appearance.tintColor = style.tintColor
        appearance.borderColor = style.borderColor
        appearance.cornerRadius = style.cornerRadius
        appearance.borderWidth = style.borderWidth
        appearance.backgroundColor = style.backgroundColor
        appearance.contentEdgeInsets = style.contentEdgeInsets ?? default_buttonContentInsets
        appearance.clipsToBounds=true
        
    }
    
}
