//
//  NightModeStatus.swift
//  mtpThemeManager
//
//  Created by Mostafa Taghipour on 9/25/18.
//

import Foundation


public enum NightModeStatus {
    case disable
    case enable
    case auto
    
   public static var all : [NightModeStatus] = [.disable , .enable , .auto]
}


