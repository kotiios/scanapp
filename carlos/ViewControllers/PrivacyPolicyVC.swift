//
//  PrivacyPolicyVCViewController.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class PrivacyPolicyVC: BaseVC {
    
    @IBOutlet weak var privacyText: UITextView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        privacyText.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do. \n \nneiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse. \n \ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim. \n \nid est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda. \n \nid est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda. \n \nLorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do. \n \nneiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse. \n \ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim. \n \nid est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda. \n \nid est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        // Do any additional setup after loading the view.
   
    }
    override func viewWillAppear(_ animated: Bool) {
//        setTitle(title: "Privacy Policy", showBack: true, isLight: true, istransculent: false, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
    
    
}
