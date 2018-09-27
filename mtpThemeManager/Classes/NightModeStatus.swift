//
//  NightModeStatus.swift
//  ThemeManager
//
//  Created by Mostafa Taghipour on 11/3/17.
//  Copyright © 2017 RainyDay. All rights reserved.
//

import Foundation

public enum NightModeStatus {
    case disable
    case enable
    case auto
    
    public static var all : [NightModeStatus] = [.disable , .enable , .auto]
}
