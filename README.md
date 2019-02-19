# mtpThemeManager

[![CI Status](http://img.shields.io/travis/mostafa.taghipour@ymail.com/mtpThemeManager.svg?style=flat)](https://travis-ci.org/mostafa.taghipour@ymail.com/mtpThemeManager)
[![Version](https://img.shields.io/cocoapods/v/mtpThemeManager.svg?style=flat)](http://cocoapods.org/pods/mtpThemeManager)
[![License](https://img.shields.io/cocoapods/l/mtpThemeManager.svg?style=flat)](http://cocoapods.org/pods/mtpThemeManager)
[![Platform](https://img.shields.io/cocoapods/p/mtpThemeManager.svg?style=flat)](http://cocoapods.org/pods/mtpThemeManager)

## [Android version is here](https://github.com/MostafaTaghipour/ThemeManager)

mtpThemeManger is a theme manager for iOS:

- Apply theme to whole app
- Supports multiple theme
- Supports night mode
- Supports styles
- Full customizable


<img src="https://raw.githubusercontent.com/MostafaTaghipour/mtpThemeManager/master/screenshots/1.gif" width="300" title="themes">


## Requirements
- iOS 9.0+
- Xcode 9+



## Installation

mtpThemeManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'mtpThemeManager'
```


## Usage

1. Import mtpThemeManager
2. Define a class that conform Theme protocol
```swift
class RedTheme:Theme {
    required  init() {}
    var id: Int=1
    var displayName: String="Red"
    var tintColor: UIColor = .red
}
```

3. Apply your theme in AppDelegate like this
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    ThemeManager.shared.setTheme(theme: RedTheme())

    return true
}
```


thats it, now run your app and enjoy it

<img src="https://raw.githubusercontent.com/MostafaTaghipour/mtpThemeManager/master/screenshots/2.png" width="300" title="red theme">


### Night mode

To apply night mode you must conform DayNightTheme protocol
```swift
class RedTheme:DayNightTheme {
    required  init() {}
    var id: Int=1
    var displayName: String="Red"
    var tintColor: UIColor = .red
}
```

and then apply your theme like this
```swift
ThemeManager.shared.setTheme(dayNight: RedTheme(), nightModeStatus: .enable)
```

or

```swift
ThemeManager.shared.setTheme(dayNight: RedTheme())
ThemeManager.shared.nightModelStatus = .enable
```

<img src="https://raw.githubusercontent.com/MostafaTaghipour/mtpThemeManager/master/screenshots/4.png" width="300" title="night theme">

### Customize
You can customize whole theme for example to customize status bar, just override statusBarStyle variable in your theme

```swift
class RedTheme:Theme {
    required  init() {}
    var id: Int=1
    var displayName: String="Red"
    var tintColor: UIColor = .red

    // you can override styles in your theme
    var statusBarStyle: StatusBarStyle=StatusBarStyle(backgroundColor: .red, style: .lightContent)
}
```

<img src="https://raw.githubusercontent.com/MostafaTaghipour/mtpThemeManager/master/screenshots/5.png" width="300" title="customize theme">

#### List of all Theme properties
- var id:Int{get}
- var displayName:String{get}
- var tintColor:UIColor{get}
- var primaryTextColor:UIColor{get}
- var backgroundColor:UIColor{get}
- var navigationBarStyle:NavigationBarStyle{get}
- var tabBarStyle:TabBarStyle{get}
- var toolbarStyle:ToolbarStyle{get}
- var searchBarStyle:SearchBarStyle{get}
- var statusBarStyle:StatusBarStyle{get}
- var keyboardStyle:KeyboardStyle{get}
- var buttonStyle:ButtonStyle{get}
- var textFieldStyle:TextFieldStyle{get}
- var textViewStyle:TextViewStyle{get}
- var activityIndicatorViewStyle : ActivityIndicatorViewStyle {get}
- var scrollViewStyle:ScrollViewStyle{get}
- var segmentedControlStyle:SegmentedControlStyle{get}
- var stepperStyle:StepperStyle{get}
- var pageControlStyle:PageControlStyle{get}
- var progressViewStyle:ProgressViewStyle{get}
- var sliderStyle:SliderStyle{get}
- var switchStyle:SwitchStyle{get}


In addition to the above properties, the DayNightTheme include the following properties too
- var tintColorNight:UIColor{get}
- var primaryTextColorNight:UIColor{get}
- var backgroundColorNight:UIColor{get}
- var navigationBarStyleNight:NavigationBarStyle{get}
- var tabBarStyleNight:TabBarStyle{get}
- var toolbarStyleNight:ToolbarStyle{get}
- var searchBarStyleNight:SearchBarStyle{get}
- var statusBarStyleNight:StatusBarStyle{get}
- var keyboardStyleNight:KeyboardStyle{get}
- var buttonStyleNight:ButtonStyle{get}
- var textFieldStyleNight:TextFieldStyle{get}
- var textViewStyleNight:TextViewStyle{get}
- var activityIndicatorViewStyleNight : ActivityIndicatorViewStyle {get}
- var scrollViewStyleNight:ScrollViewStyle{get}
- var segmentedControlStyleNight:SegmentedControlStyle{get}
- var stepperStyleNight:StepperStyle{get}
- var pageControlStyleNight:PageControlStyle{get}
- var progressViewStyleNight:ProgressViewStyle{get}
- var sliderStyleNight:SliderStyle{get}
- var switchStyleNight:SwitchStyle{get}


### Styles
One of mtpThemeManager features are styles, you can define styles and use them wherever you need
for example i define two button style and use them
```swift
let roundButtonStyle=ButtonStyle(tintColor: .orange, borderColor: .orange, borderWidth: 2, cornerRadius: 9)
let riseduttonStyle=ButtonStyle(backgroundColor: UIColor.init(red: 90/255, green: 200/255, blue: 250/255, alpha: 1) , tintColor: .white)

override func viewDidLoad() {
    super.viewDidLoad()

    button1.setStyle(style: roundButtonStyle)
    button2.setStyle(style: roundButtonStyle)
    button3.setStyle(style: roundButtonStyle)
    button4.setStyle(style: riseduttonStyle)

}
```
<img src="https://raw.githubusercontent.com/MostafaTaghipour/mtpThemeManager/master/screenshots/6.png" width="300" title="styles">


#### List of all styles
- StatusBarStyle
- NavigationBarStyle
- TabBarStyle
- ToolbarStyle
- SearchBarStyle
- TextFieldStyle
- TextViewStyle
- ButtonStyle
- ActivityIndicatorViewStyle
- ScrollViewStyle
- SegmentedControlStyle
- StepperStyle
- PageControlStyle
- ProgressViewStyle
- SliderStyle
- SwitchStyle
- KeyboardStyle

### Current theme properties
You can access current theme properties like current tint color and etc
```swift
override func viewDidLoad() {
    super.viewDidLoad()

    self.navigationController?.navigationBar.tintColor = .white
    // apply current themeColor to navigation bar barTintColor
    self.navigationController?.navigationBar.barTintColor = ThemeManager.shared.tintColor

}
```
<img src="https://raw.githubusercontent.com/MostafaTaghipour/mtpThemeManager/master/screenshots/7.png" width="300" title="current theme properties">


#### List of all current theme properties
- public var tintColor:UIColor?
- public var backgroundColor:UIColor?
- public var primaryTextColor:UIColor?
- public var navigationBarStyle:NavigationBarStyle?
- public var tabBarStyle:TabBarStyle
- public var toolbarStyle:ToolbarStyle?
- public var searchBarStyle:SearchBarStyle?
- public var statusBarStyle:StatusBarStyle?
- public var buttonStyles:ButtonStyle?
- public var textFieldStyle:TextFieldStyle?
- public var textViewStyle:TextViewStyle?
- public var keyboardStyle:KeyboardStyle?
- public var activityIndicatorViewStyle:ActivityIndicatorViewStyle?
- public var switchStyle:SwitchStyle?
- public var sliderStyle:SliderStyle?
- public var progressViewStyle:ProgressViewStyle?
- public var pageControlStyle:PageControlStyle?
- public var stepperStyle:StepperStyle?
- public var segmentedControlStyle:SegmentedControlStyle?
- public var scrollViewStyle:ScrollViewStyle?


### Notification
There is a notification that fired when theme did changed
```swift
override func viewDidLoad() {
    super.viewDidLoad()

    NotificationCenter.default.addObserver(self, selector: #selector(themeDidChanged(notification:)), name: NSNotification.Name.ThemeDidChange, object: nil)

}


@objc func themeDidChanged(notification:Notification)  {
    if let theme=notification.object as? Theme{
        print(theme.displayName)
    }
}
```


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Author

Mostafa Taghipour, mostafa@taghipour.me

## License

mtpThemeManager is available under the MIT license. See the LICENSE file for more info.
