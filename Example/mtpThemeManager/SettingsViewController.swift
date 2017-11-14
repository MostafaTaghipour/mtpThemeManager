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
    @IBOutlet weak var nightModeSwitch: UISwitch!
    
    let themeManager=ThemeManager.shared
    var allThemes:[Theme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        themePicker.dataSource=self
        themePicker.delegate=self
        themePicker.selectorColor = themeManager.secondaryTextColor
        
        allThemes=themeManager.availableThemes
        if let currentTheme=themeManager.currentTheme , let selectedValue=allThemes.index(where: {$0.id==currentTheme.id}){
            themePicker.selectRow(selectedValue, inComponent: 0, animated: false)
        }
        
        nightModeSwitch.isOn=themeManager.enableNightModel
    }
    
    
    func reloadAllViewControllers(){
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = mainStoryboard.instantiateViewController(withIdentifier: "mainNavigationController") as! UINavigationController
        let settingVC = mainStoryboard.instantiateViewController(withIdentifier: "settingVC")
        navigationController.pushViewController(settingVC, animated: false)
        UIApplication.shared.keyWindow?.rootViewController = navigationController
    }
    @IBAction func nightModeChanged(_ sender: UISwitch) {
        themeManager.enableNightModel=sender.isOn
        reloadAllViewControllers()
    }
}


extension SettingsViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return  1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allThemes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return allThemes[row].displayName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        themeManager.setTheme(dayNight: allThemes[row] as! AppTheme)
        reloadAllViewControllers()
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = allThemes[row].displayName
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.foregroundColor:themeManager.primaryTextColor!])
        return myTitle
    }
}



