//
//  LockScreenVC.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class LockScreenVC: BaseVC {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet var textFields: [UITextField]!
    
    @IBOutlet weak var DoneButton: UIButton!
    
    var comefrom = ""
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DoneButton.layer.cornerRadius = DoneButton.frame.height/2
        titleLabel.text = comefrom
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
//        setTitle(title: comefrom, showBack: true, isLight: true, istransculent: false, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))
        
    }
    
    @IBAction func DoneButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewImageVC") as! ViewImageVC
        self.navigationController?.pushViewController(vc, animated: true)
        

        
    }
    func navigationToBack(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func removeButtonAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "settingsVC") as! settingsVC
              self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
    
}
extension LockScreenVC:UITextFieldDelegate {
   
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textFields[0].text == "") {
            textFields[0].becomeFirstResponder()
            textFields[0].text = " "
        }
    }
    
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
   
            if ((textField.text!.count) >= 1  && string.count == 0){
                let previousTag = textField.tag - 1
                var previousResponder = textField.superview?.viewWithTag(previousTag)
                if (previousResponder == nil){
                    previousResponder = textField.superview?.viewWithTag(1)
                }
                textField.text = " "
                if previousResponder != nil && previousResponder!.isKind(of: UITextField.self) {
                    previousResponder?.becomeFirstResponder()
    //                (previousResponder as! UITextField).text = " "
                }
                return false
            }
            else {
                let nextTag = textField.tag + 1
                let nextResponder = textField.superview?.viewWithTag(nextTag)
                textField.text = string
                if (nextResponder == nil){
                    textField.resignFirstResponder()
                    return false
                }
                nextResponder?.becomeFirstResponder()
                (nextResponder as! UITextField).text = " "
                return false
            }
        }
    
    
}
