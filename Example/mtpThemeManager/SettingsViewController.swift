//
//  SettingsViewController.swift
//  mtpThemeManager_Example
//
//  Created by Mostafa Taghipour on 11/13/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import mtpThemeManager

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var themePicker: UIPickerView!
    @IBOutlet weak var nightPicker: UIPickerView!
    
    let themeManager=ThemeManager.shared
    var allThemes:[Theme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        themePicker.dataSource=self
        themePicker.delegate=self
        themePicker.selectorColor = secondaryTextColor
        
        allThemes=themeManager.availableThemes
        if let currentTheme=themeManager.currentTheme , let selectedValue=allThemes.firstIndex(where: {$0.id==currentTheme.id}){
            themePicker.selectRow(selectedValue, inComponent: 0, animated: false)
        }
        
        nightPicker.dataSource=self
        nightPicker.delegate=self
        nightPicker.selectorColor = secondaryTextColor
        
     
        if  let selectedValue=NightModeStatus.all.firstIndex(of: themeManager.nightModeStatus ){
            nightPicker.selectRow(selectedValue, inComponent: 0, animated: false)
        }
    }
    
    
    func reloadAllViewControllers(){
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = mainStoryboard.instantiateViewController(withIdentifier: "mainNavigationController") as! UINavigationController
        let settingVC = mainStoryboard.instantiateViewController(withIdentifier: "settingVC")
        navigationController.pushViewController(settingVC, animated: false)
        UIApplication.shared.keyWindow?.rootViewController = navigationController
    }
}


extension SettingsViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return  1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerView === themePicker ? allThemes.count : NightModeStatus.all.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerView === themePicker ? allThemes[row].displayName : "\(NightModeStatus.all[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView === themePicker){
            themeManager.setTheme(dayNight: allThemes[row] as! AppTheme)
        }
        else{
            themeManager.nightModeStatus = NightModeStatus.all[row]
        }
        reloadAllViewControllers()
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = pickerView === themePicker ? allThemes[row].displayName : "\(NightModeStatus.all[row])"
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor:themeManager.primaryTextColor!])
        return myTitle
    }
}



