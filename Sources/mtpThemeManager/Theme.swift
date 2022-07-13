//
//  Theme.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit

// MARK: - Theme

public protocol Theme {
    init()

    var id: Int { get }
    var displayName: String { get }
    var tintColor: UIColor { get }
    var textColor: UIColor { get }
    var backgroundColor: UIColor { get }
    var navigationBarStyle: NavigationBarStyle { get }
    var tabBarStyle: TabBarStyle { get }
    var toolbarStyle: ToolbarStyle { get }
    var searchBarStyle: SearchBarStyle { get }
    var statusBarStyle: StatusBarStyle { get }
    var keyboardStyle: KeyboardStyle { get }
    var buttonStyle: ButtonStyle { get }
    var textFieldStyle: TextFieldStyle { get }
    var textViewStyle: TextViewStyle { get }
    var activityIndicatorViewStyle: ActivityIndicatorViewStyle { get }
    var scrollViewStyle: ScrollViewStyle { get }
    var segmentedControlStyle: SegmentedControlStyle { get }
    var stepperStyle: StepperStyle { get }
    var pageControlStyle: PageControlStyle { get }
    var progressViewStyle: ProgressViewStyle { get }
    var sliderStyle: SliderStyle { get }
    var switchStyle: SwitchStyle { get }
}

public extension Theme {
    var backgroundColor: UIColor { return .white }

    var textColor: UIColor { return UIColor.darkText }

    var navigationBarStyle: NavigationBarStyle { return NavigationBarStyle() }

    var tabBarStyle: TabBarStyle { return TabBarStyle() }

    var toolbarStyle: ToolbarStyle { return ToolbarStyle() }

    var searchBarStyle: SearchBarStyle { return SearchBarStyle(textFieldStyle: TextFieldStyle(backgroundColor: nil,
                                                                                              textColor: textColor,
                                                                                              borderColor: nil,
                                                                                              borderWidth: 0,
                                                                                              cornerRadius: 8.0,
                                                                                              placeholderColor: .lightGray)) }

    var statusBarStyle: StatusBarStyle { return StatusBarStyle() }

    var keyboardStyle: KeyboardStyle { return KeyboardStyle() }

    var buttonStyle: ButtonStyle {
        return ButtonStyle()
    }

    var textFieldStyle: TextFieldStyle {
        return TextFieldStyle(backgroundColor: .clear,
                              textColor: textColor,
                              borderColor: .lightGray,
                              borderWidth: 0.5,
                              cornerRadius: 8.0,
                              placeholderColor: .lightGray)
    }

    var textViewStyle: TextViewStyle {
        return TextViewStyle(textColor: textColor)
    }

    var activityIndicatorViewStyle: ActivityIndicatorViewStyle {
        return ActivityIndicatorViewStyle()
    }

    var scrollViewStyle: ScrollViewStyle {
        return ScrollViewStyle()
    }

    var segmentedControlStyle: SegmentedControlStyle {
        return SegmentedControlStyle()
    }

    var stepperStyle: StepperStyle {
        return StepperStyle()
    }

    var pageControlStyle: PageControlStyle {
        return PageControlStyle(pageIndicatorTintColor: UIColor.lightGray.withAlphaComponent(0.5), currentPageIndicatorTintColor: tintColor)
    }

    var progressViewStyle: ProgressViewStyle {
        return ProgressViewStyle()
    }

    var sliderStyle: SliderStyle {
        return SliderStyle()
    }

    var switchStyle: SwitchStyle {
        return SwitchStyle()
    }
}

// MARK: - DayNight

public protocol DayNightTheme: Theme {
    var tintColorNight: UIColor { get }
    var textColorNight: UIColor { get }
    var backgroundColorNight: UIColor { get }
    var navigationBarStyleNight: NavigationBarStyle { get }
    var tabBarStyleNight: TabBarStyle { get }
    var toolbarStyleNight: ToolbarStyle { get }
    var searchBarStyleNight: SearchBarStyle { get }
    var statusBarStyleNight: StatusBarStyle { get }
    var keyboardStyleNight: KeyboardStyle { get }
    var buttonStyleNight: ButtonStyle { get }
    var textFieldStyleNight: TextFieldStyle { get }
    var textViewStyleNight: TextViewStyle { get }
    var activityIndicatorViewStyleNight: ActivityIndicatorViewStyle { get }
    var scrollViewStyleNight: ScrollViewStyle { get }
    var segmentedControlStyleNight: SegmentedControlStyle { get }
    var stepperStyleNight: StepperStyle { get }
    var pageControlStyleNight: PageControlStyle { get }
    var progressViewStyleNight: ProgressViewStyle { get }
    var sliderStyleNight: SliderStyle { get }
    var switchStyleNight: SwitchStyle { get }
}

public extension DayNightTheme {
    var tintColorNight: UIColor { return .white }

    var textColorNight: UIColor { return UIColor.lightText }

    var backgroundColorNight: UIColor { return UIColor(red: 31 / 255, green: 33 / 255, blue: 36 / 255, alpha: 1) }

    var navigationBarStyleNight: NavigationBarStyle { return NavigationBarStyle(barStyle: .black) }

    var tabBarStyleNight: TabBarStyle { return TabBarStyle(barStyle: .black) }

    var toolbarStyleNight: ToolbarStyle { return ToolbarStyle(barStyle: .black) }

    var searchBarStyleNight: SearchBarStyle { return SearchBarStyle(barStyle: .black,
                                                                    textFieldStyle: TextFieldStyle(backgroundColor: nil,
                                                                                                   textColor: textColorNight,
                                                                                                   borderColor: nil,
                                                                                                   borderWidth: 0,
                                                                                                   cornerRadius: 8.0,
                                                                                                   placeholderColor: UIColor.white.withAlphaComponent(0.2))) }

    var statusBarStyleNight: StatusBarStyle { return StatusBarStyle(style: .lightContent) }

    var keyboardStyleNight: KeyboardStyle { return KeyboardStyle(appearance: .dark) }

    var textFieldStyleNight: TextFieldStyle {
        return TextFieldStyle(backgroundColor: .clear,
                              textColor: textColorNight,
                              borderColor: UIColor.white.withAlphaComponent(0.3),
                              borderWidth: 0.5,
                              cornerRadius: 8.0,
                              placeholderColor: UIColor.white.withAlphaComponent(0.3))
    }

    var textViewStyleNight: TextViewStyle {
        return TextViewStyle(textColor: textColorNight)
    }

    var activityIndicatorViewStyleNight: ActivityIndicatorViewStyle {
        return ActivityIndicatorViewStyle(color: .white)
    }

    var scrollViewStyleNight: ScrollViewStyle {
        return ScrollViewStyle(indicatorStyle: .white)
    }

    var segmentedControlStyleNight: SegmentedControlStyle {
        return SegmentedControlStyle()
    }

    var stepperStyleNight: StepperStyle {
        return StepperStyle()
    }

    var pageControlStyleNight: PageControlStyle {
        return PageControlStyle()
    }

    var progressViewStyleNight: ProgressViewStyle {
        return ProgressViewStyle()
    }

    var sliderStyleNight: SliderStyle {
        return SliderStyle()
    }

    var switchStyleNight: SwitchStyle {
        return SwitchStyle()
    }

    var buttonStyleNight: ButtonStyle {
        return ButtonStyle()
    }
}

// MARK: - Operators

func == (lhs: Theme?, rhs: Theme?) -> Bool {
    return lhs?.id == rhs?.id
}

func != (lhs: Theme?, rhs: Theme?) -> Bool {
    return lhs?.id != rhs?.id
}
