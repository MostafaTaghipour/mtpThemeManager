//
//  ThemeManager+Properties.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit



public extension ThemeManager{
    public var tintColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.tintColorNight : theme.tintColor
                }
                else{
                    return unwrapedCurrentTheme.tintColor
                }
            }
            
            return nil
        }
    }
    
    
    public var backgroundColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.backgroundColorNight : theme.backgroundColor
                }
                else{
                    return unwrapedCurrentTheme.backgroundColor
                }
            }
            
            return nil
        }
    }
    
    public var primaryTextColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.textColorNight : theme.textColor
                }
                else{
                    return unwrapedCurrentTheme.textColor
                }
            }
            
            return nil
        }
    }
    
 
    public var navigationBarStyle:NavigationBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.navigationBarStyleNight : theme.navigationBarStyle
                }
                else{
                    return unwrapedCurrentTheme.navigationBarStyle
                }
            }
            
            return nil
        }
    }
    
    public var tabBarStyle:TabBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.tabBarStyleNight : theme.tabBarStyle
                }
                else{
                    return unwrapedCurrentTheme.tabBarStyle
                }
            }
            
            return nil
        }
    }
    
    public var toolbarStyle:ToolbarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.toolbarStyleNight : theme.toolbarStyle
                }
                else{
                    return unwrapedCurrentTheme.toolbarStyle
                }
            }
            
            return nil
        }
    }
    
    public var searchBarStyle:SearchBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.searchBarStyleNight : theme.searchBarStyle
                }
                else{
                    return unwrapedCurrentTheme.searchBarStyle
                }
            }
            
            return nil
        }
    }
    
    public var statusBarStyle:StatusBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.statusBarStyleNight : theme.statusBarStyle
                }
                else{
                    return unwrapedCurrentTheme.statusBarStyle
                }
            }
            
            return nil
        }
    }
    
    public var buttonStyles:ButtonStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.buttonStyleNight : theme.buttonStyle
                }
                else{
                    return unwrapedCurrentTheme.buttonStyle
                }
            }
            
            return nil
        }
    }
    
    public var textFieldStyle:TextFieldStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.textFieldStyleNight : theme.textFieldStyle
                }
                else{
                    return unwrapedCurrentTheme.textFieldStyle
                }
            }
            
            return nil
        }
    }
    
    
    public var textViewStyle:TextViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.textViewStyleNight : theme.textViewStyle
                }
                else{
                    return unwrapedCurrentTheme.textViewStyle
                }
            }
            
            return nil
        }
    }
    
    public var keyboardStyle:KeyboardStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.keyboardStyleNight : theme.keyboardStyle
                }
                else{
                    return unwrapedCurrentTheme.keyboardStyle
                }
            }
            
            return nil
        }
    }
    
    public var activityIndicatorViewStyle:ActivityIndicatorViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.activityIndicatorViewStyleNight : theme.activityIndicatorViewStyle
                }
                else{
                    return unwrapedCurrentTheme.activityIndicatorViewStyle
                }
            }
            
            return nil
        }
    }
    
    
    
    public var switchStyle:SwitchStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.switchStyleNight : theme.switchStyle
                }
                else{
                    return unwrapedCurrentTheme.switchStyle
                }
            }
            
            return nil
        }
    }
    
    
    public var sliderStyle:SliderStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.sliderStyleNight : theme.sliderStyle
                }
                else{
                    return unwrapedCurrentTheme.sliderStyle
                }
            }
            
            return nil
        }
    }
    
    public var progressViewStyle:ProgressViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.progressViewStyleNight : theme.progressViewStyle
                }
                else{
                    return unwrapedCurrentTheme.progressViewStyle
                }
            }
            
            return nil
        }
    }
    
    public var pageControlStyle:PageControlStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.pageControlStyleNight : theme.pageControlStyle
                }
                else{
                    return unwrapedCurrentTheme.pageControlStyle
                }
            }
            
            return nil
        }
    }
    
    public var stepperStyle:StepperStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.stepperStyleNight : theme.stepperStyle
                }
                else{
                    return unwrapedCurrentTheme.stepperStyle
                }
            }
            
            return nil
        }
    }
    
    public var segmentedControlStyle:SegmentedControlStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.segmentedControlStyleNight : theme.segmentedControlStyle
                }
                else{
                    return unwrapedCurrentTheme.segmentedControlStyle
                }
            }
            
            return nil
        }
    }
    
    public var scrollViewStyle:ScrollViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return isItNight ? theme.scrollViewStyleNight : theme.scrollViewStyle
                }
                else{
                    return unwrapedCurrentTheme.scrollViewStyle
                }
            }
            
            return nil
        }
    }
    
}



