//
//  ViewImageVC.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class ViewImageVC: BaseVC  {
    
    
    
    @IBOutlet weak var ocrNameLabel: UILabel!
    
    @IBOutlet weak var updatePinNameLabel: UILabel!
    
    @IBOutlet weak var rotateNameLabel: UILabel!
    
    @IBOutlet weak var addSignitureNameLabel: UILabel!
    
    @IBOutlet weak var shareNameLabel: UILabel!
    
    @IBOutlet weak var ocrButtonImage: UIImageView!
    
    @IBOutlet weak var updatePinButtonImage: UIImageView!
    
    @IBOutlet weak var rotateButtonImage: UIImageView!
    
    @IBOutlet weak var addSignitureButtonImage: UIImageView!
    
    @IBOutlet weak var shareButtonImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //        setTitle(title: "View Image", showBack: true, isLight: true, istransculent: false, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))
        
    }
    
    
    @IBAction func ocrButtonAction(_ sender: UIButton) {
        ocrNameLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        ocrButtonImage.image = UIImage(named: "OCR2")
        
        updatePinNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               updatePinButtonImage.image = UIImage(named: "lock1")
        rotateNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               rotateButtonImage.image = UIImage(named: "rotate1")
        addSignitureNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
              addSignitureButtonImage.image = UIImage(named: "addsign1")
        shareNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        shareButtonImage.image = UIImage(named: "share1")
        
    }
    
    @IBAction func createPasswordButtonAction(_ sender: UIButton) {
        
        updatePinNameLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        updatePinButtonImage.image = UIImage(named: "lock2")
        
        ocrNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               ocrButtonImage.image = UIImage(named: "OCR1")
        rotateNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
                    rotateButtonImage.image = UIImage(named: "rotate1")
             addSignitureNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
                   addSignitureButtonImage.image = UIImage(named: "addsign1")
             shareNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
             shareButtonImage.image = UIImage(named: "share1")
        
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "LockScreenVC") as! LockScreenVC
        vc.comefrom = "Set Pin"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func rotateButtonAction(_ sender: Any) {
        
    
        rotateNameLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        rotateButtonImage.image = #imageLiteral(resourceName: "rotate2")

        ocrNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        ocrButtonImage.image = UIImage(named: "OCR1")
        updatePinNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        updatePinButtonImage.image = UIImage(named: "lock1")
        
        addSignitureNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        addSignitureButtonImage.image = UIImage(named: "addsign1")
        shareNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        shareButtonImage.image = UIImage(named: "share1")
    }
    
    
    @IBAction func addSignitureButtonAction(_ sender: UIButton) {
        
        addSignitureNameLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        addSignitureButtonImage.image = UIImage(named: "addsign2")
        
        rotateNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        rotateButtonImage.image = UIImage(named: "rotate1")
        ocrNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               ocrButtonImage.image = UIImage(named: "OCR1")
               updatePinNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               updatePinButtonImage.image = UIImage(named: "lock1")
        shareNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        shareButtonImage.image = UIImage(named: "share1")
        
        
    }
    
    
    @IBAction func shareButtonAction(_ sender: UIButton) {
        shareNameLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        shareButtonImage.image = UIImage(named: "share2")
        
        
        addSignitureNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        addSignitureButtonImage.image = UIImage(named: "addsign1")
        
        rotateNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        rotateButtonImage.image = UIImage(named: "rotate1")
        ocrNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               ocrButtonImage.image = UIImage(named: "OCR1")
               updatePinNameLabel.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               updatePinButtonImage.image = UIImage(named: "lock1")
        
        
        
        
        
        
        
        
        
        
        //show alert
        showAlert(title: "Share", message: .none, cancelTitle: "Cancel", cancelAction: .none, okayTitle: "Share", .none,shareviewisHidden: false)
    }
    
    
    
    
    
    @IBAction func createFolderButtonAction(_ sender: UIButton) {

  //show alert
        showAlert(title: "Create Folder", message: .none, cancelTitle: "Cancel", cancelAction: .none, okayTitle: "Done",navigate,txtFieldHide: false,textPlacehlder: "Enter Folder Name")
    }
    

    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func navigate() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ImagesVC") as! ImagesVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
