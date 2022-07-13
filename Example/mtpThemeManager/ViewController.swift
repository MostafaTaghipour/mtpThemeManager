//
//  ViewController.swift
//  mtpThemeManager
//
//  Created by mostafa.taghipour@ymail.com on 11/13/2017.
//  Copyright (c) 2017 mostafa.taghipour@ymail.com. All rights reserved.
//

import mtpThemeManager
import UIKit

class ViewController: UIViewController {
    @IBOutlet var subtitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        subtitleLabel.textColor = secondaryTextColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
