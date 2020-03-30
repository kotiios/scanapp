//
//  LoginVC.swift
//  carlos
//
//  Created by avula koti on 21/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class LoginVC: BaseVC {

    @IBOutlet weak var viewLoginButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewLoginButton.layer.cornerRadius = viewLoginButton.frame.height/2
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
       
    }
    
    @IBAction func loginButtonActionFB(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ScanVC") as! ScanVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
