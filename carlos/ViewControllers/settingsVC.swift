//
//  settingsVC.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class settingsVC: BaseVC {
    
    @IBOutlet weak var settingsTableview: UITableView!
    
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    var settingsImageArray = ["add-security-pin","picture-quality","manage-subscription","rate-application","share1","contact-us","privacy-policy","terms-&-conditions","logout"]
    
    var settingsName = ["Add/Update security Pin", "PictureQuality","ManageSubscription","Rate Application","Share Application","Contact Us","Privacy Policy","Terms & Conditions","Logout"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

//         setTitle(title: "Settings", showBack: true, isLight: true, istransculent: false, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))



    }
    
    @IBAction func backButton(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func privacyPolicyButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PrivacyPolicyVC") as! PrivacyPolicyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func logoutButtonAction(_ sender: UIButton) {
       
        
        showAlert(title: .none, message: "Are you sure, you want to \n Logout?", cancelTitle: "No", cancelAction: nil, okayTitle: "Yes", navigateToLogin)
    }
    
    @IBAction func AddUpdateSecurityButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LockScreenVC") as! LockScreenVC
        vc.comefrom = "Update Pin"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func navigateToLogin() {
           navigationController?.popToRootViewController(animated: true)
       }
    
    
    
    
    
    
    
    
    
}


