//
//  ChangeSizeVC.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class ChangeSizeVC: BaseVC {
    
    @IBOutlet weak var A4image: UIImageView!
    @IBOutlet weak var letterImageView: UIImageView!
    @IBOutlet weak var businessCardsImage: UIImageView!
    @IBOutlet weak var A4Button: UIButton!
    @IBOutlet weak var legalImage: UIImageView!
    @IBOutlet weak var letterButton: UIButton!
    @IBOutlet weak var legalButton: UIButton!
    @IBOutlet weak var businessCardsButton: UIButton!
    
    var isselectedBool:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userDefaults()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //        setTitle(title: "Change Size", showBack: true, isLight: true, istransculent: true, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))
        
    }
    
    //MARK:- Button Action
    
    @IBAction func A4ButtonAction(_ sender: UIButton) {
        
        navigateToEditScreen()
        A4ButtonColor()
        
    }
    
    @IBAction func letterButtonAction(_ sender: UIButton) {
        
        navigateToEditScreen()
        letterButtonColor()
        
    }
    
    @IBAction func legalButtonAction(_ sender: UIButton) {
        
        navigateToEditScreen()
        legalButtonColor()
        
        
    }
    
    @IBAction func BusinessCardButtonAction(_ sender: UIButton) {
        
        navigateToEditScreen()
        BussinessCardButtonColor()
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func navigateToEditScreen() {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK:- Button Colors / Defaults
    
    func A4ButtonColor() {
        
        UserDefaults.standard.set(true, forKey: "A4")
        UserDefaults.standard.set(false, forKey: "letter")
        UserDefaults.standard.set(false, forKey: "legal")
        UserDefaults.standard.set(false, forKey: "business")
        
        A4image.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        A4Button.setTitleColor(#colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1), for: .normal)
        letterImageView.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        legalImage.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        businessCardsImage.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        letterButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        legalButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        businessCardsButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
    }
    
    func letterButtonColor() {
        
        
        UserDefaults.standard.set(false, forKey: "A4")
        UserDefaults.standard.set(true, forKey: "letter")
        UserDefaults.standard.set(false, forKey: "legal")
        UserDefaults.standard.set(false, forKey: "business")
        
        letterImageView.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        letterButton.setTitleColor(#colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1), for: .normal)
        A4image.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        legalImage.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        businessCardsImage.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        A4Button.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        legalButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        businessCardsButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
    }
    
    func legalButtonColor() {
        UserDefaults.standard.set(false, forKey: "A4")
        UserDefaults.standard.set(false, forKey: "letter")
        UserDefaults.standard.set(true, forKey: "legal")
        UserDefaults.standard.set(false, forKey: "business")
        
        legalImage.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        letterImageView.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        A4image.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        businessCardsImage.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        
        //navigateToFilterScreen()
        A4Button.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        letterButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        legalButton.setTitleColor(#colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1), for: .normal)
        businessCardsButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
    }
    
    func BussinessCardButtonColor() {
        
        UserDefaults.standard.set(false, forKey: "A4")
        UserDefaults.standard.set(false, forKey: "letter")
        UserDefaults.standard.set(false, forKey: "legal")
        UserDefaults.standard.set(true, forKey: "business")
        
        businessCardsImage.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        legalImage.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        letterImageView.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        A4image.tintColor = #colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1)
        A4Button.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        letterButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        legalButton.setTitleColor(#colorLiteral(red: 0.4145884216, green: 0.4077237844, blue: 0.4008764029, alpha: 1), for: .normal)
        businessCardsButton.setTitleColor(#colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1), for: .normal)
    }
    
    func userDefaults() {
        
        if UserDefaults.standard.bool(forKey: "A4") == true {
                   A4ButtonColor()
               }else
                   if UserDefaults.standard.bool(forKey: "letter") == true {
                       letterButtonColor()
                   }
                   else
                       if UserDefaults.standard.bool(forKey: "legal") == true {
                           legalButtonColor()
                       }
                       else
                           if UserDefaults.standard.bool(forKey: "business") == true {
                               BussinessCardButtonColor()
               }
    }
}
