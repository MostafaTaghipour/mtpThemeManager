//
//  ThemeManager+Properties.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import UIKit



extension ThemeManager{
    var tintColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.tintColorNight : theme.tintColor
                }
                else{
                    return unwrapedCurrentTheme.tintColor
                }
            }
            
            return nil
        }
    }
    
    
    var backgroundColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.backgroundColorNight : theme.backgroundColor
                }
                else{
                    return unwrapedCurrentTheme.backgroundColor
                }
            }
            
            return nil
        }
    }
    
    var primaryTextColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.primaryTextColorNight : theme.primaryTextColor
                }
                else{
                    return unwrapedCurrentTheme.primaryTextColor
                }
            }
            
            return nil
        }
    }
    
    var secondaryTextColor:UIColor?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.secondaryTextColorNight : theme.secondaryTextColor
                }
                else{
                    return unwrapedCurrentTheme.secondaryTextColor
                }
            }
            
            return nil
        }
    }
    
    
    
    var navigationBarStyle:NavigationBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.navigationBarStyleNight : theme.navigationBarStyle
                }
                else{
                    return unwrapedCurrentTheme.navigationBarStyle
                }
            }
            
            return nil
        }
    }
    
    var tabBarStyle:TabBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.tabBarStyleNight : theme.tabBarStyle
                }
                else{
                    return unwrapedCurrentTheme.tabBarStyle
                }
            }
            
            return nil
        }
    }
    
    var toolbarStyle:ToolbarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.toolbarStyleNight : theme.toolbarStyle
                }
                else{
                    return unwrapedCurrentTheme.toolbarStyle
                }
            }
            
            return nil
        }
    }
    
    var searchBarStyle:SearchBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.searchBarStyleNight : theme.searchBarStyle
                }
                else{
                    return unwrapedCurrentTheme.searchBarStyle
                }
            }
            
            return nil
        }
    }
    
    var statusBarStyle:StatusBarStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.statusBarStyleNight : theme.statusBarStyle
                }
                else{
                    return unwrapedCurrentTheme.statusBarStyle
                }
            }
            
            return nil
        }
    }
    
    var buttonStyles:ButtonStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.buttonStyleNight : theme.buttonStyle
                }
                else{
                    return unwrapedCurrentTheme.buttonStyle
                }
            }
            
            return nil
        }
    }
    
    var textFieldStyle:TextFieldStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.textFieldStyleNight : theme.textFieldStyle
                }
                else{
                    return unwrapedCurrentTheme.textFieldStyle
                }
            }
            
            return nil
        }
    }
    
    
    var textViewStyle:TextViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.textViewStyleNight : theme.textViewStyle
                }
                else{
                    return unwrapedCurrentTheme.textViewStyle
                }
            }
            
            return nil
        }
    }
    
    var keyboardStyle:KeyboardStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.keyboardStyleNight : theme.keyboardStyle
                }
                else{
                    return unwrapedCurrentTheme.keyboardStyle
                }
            }
            
            return nil
        }
    }
    
    var activityIndicatorViewStyle:ActivityIndicatorViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.activityIndicatorViewStyleNight : theme.activityIndicatorViewStyle
                }
                else{
                    return unwrapedCurrentTheme.activityIndicatorViewStyle
                }
            }
            
            return nil
        }
    }
    
    
    
    var switchStyle:SwitchStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.switchStyleNight : theme.switchStyle
                }
                else{
                    return unwrapedCurrentTheme.switchStyle
                }
            }
            
            return nil
        }
    }
    
    
    var sliderStyle:SliderStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.sliderStyleNight : theme.sliderStyle
                }
                else{
                    return unwrapedCurrentTheme.sliderStyle
                }
            }
            
            return nil
        }
    }
    
    var progressViewStyle:ProgressViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.progressViewStyleNight : theme.progressViewStyle
                }
                else{
                    return unwrapedCurrentTheme.progressViewStyle
                }
            }
            
            return nil
        }
    }
    
    var pageControlStyle:PageControlStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.pageControlStyleNight : theme.pageControlStyle
                }
                else{
                    return unwrapedCurrentTheme.pageControlStyle
                }
            }
            
            return nil
        }
    }
    
    var stepperStyle:StepperStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.stepperStyleNight : theme.stepperStyle
                }
                else{
                    return unwrapedCurrentTheme.stepperStyle
                }
            }
            
            return nil
        }
    }
    
    var segmentedControlStyle:SegmentedControlStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.segmentedControlStyleNight : theme.segmentedControlStyle
                }
                else{
                    return unwrapedCurrentTheme.segmentedControlStyle
                }
            }
            
            return nil
        }
    }
    
    var scrollViewStyle:ScrollViewStyle?{
        get{
            if let unwrapedCurrentTheme=currentTheme{
                if let theme = unwrapedCurrentTheme as? DayNightTheme{
                    return enableNightModel ? theme.scrollViewStyleNight : theme.scrollViewStyle
                }
                else{
                    return unwrapedCurrentTheme.scrollViewStyle
                }
            }
            
            return nil
        }
    }
    
}



