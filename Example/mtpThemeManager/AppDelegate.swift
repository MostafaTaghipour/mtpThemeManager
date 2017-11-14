//
//  AppDelegate.swift
//  mtpThemeManager
//
//  Created by mostafa.taghipour@ymail.com on 11/13/2017.
//  Copyright (c) 2017 mostafa.taghipour@ymail.com. All rights reserved.
//

import UIKit
import mtpThemeManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
         ThemeManager.shared.setTheme(dayNight: RedTheme())
        
        return true
    }


}

