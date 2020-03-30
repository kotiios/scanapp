//
//  ScanVC.swift
//  carlos
//
//  Created by avula koti on 21/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class ScanVC: BaseVC {
   
    @IBOutlet weak var selectedDocumenButton: UIButton!
    @IBOutlet weak var selectedQRCodeButton: UIButton!
    @IBOutlet weak var viewButtons: UIView!
    @IBOutlet weak var UnSelectDocumentButton: UIButton!
    @IBOutlet weak var UnSelectQRCodeButton: UIButton!
    @IBOutlet weak var qrImageview: UIImageView!
    @IBOutlet weak var switchAutomatic: UISwitch!
    @IBOutlet weak var capturedImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    // Do any additional setup after loading the view.
      //  switchAutomatic.transform = CGAffineTransform(scaleX:0.85, y: 0.75)
        selectedDocumenButton.isHidden = true
   
    }
    
    override var prefersStatusBarHidden: Bool {
        
        return true
        
    }
 
 
    override func viewWillAppear(_ animated: Bool) {
    
   
         navigationController?.navigationBar.isHidden = true
        viewButtons.layer.cornerRadius = viewButtons.frame.height/2
        selectedDocumenButton.layer.cornerRadius = selectedDocumenButton.frame.height/2
        selectedQRCodeButton.layer.cornerRadius = selectedQRCodeButton.frame.height/2
        
        UnSelectQRCodeButton.layer.cornerRadius = UnSelectQRCodeButton.frame.height/2
        UnSelectDocumentButton.layer.cornerRadius = UnSelectDocumentButton.frame.height/2
    }
    
    @IBAction func selectedQRButton(_ sender: UIButton) {
      
    }
    
    @IBAction func selectedDocumentButton(_ sender: Any) {
        
        
    }
    @IBAction func UnSelectDocumentButtonAction(_ sender: UIButton) {
        
        selectedDocumenButton.isHidden = false
        selectedQRCodeButton.isHidden = true
        
    }
    @IBAction func UnSelectQRCodeButtonAction(_ sender: UIButton) {
        selectedQRCodeButton.isHidden = false
        selectedDocumenButton.isHidden = true
        
    }
    @IBAction func CaptureActionButton(_ sender: UIButton) {

        navigation()
    }

    @IBAction func settingsCamButton(_ sender: UIButton) {
        let saveVC = storyboard?.instantiateViewController(withIdentifier: "settingsVC") as! settingsVC
        self.navigationController?.pushViewController(saveVC, animated: true)
    }
    
    @IBAction func flashButtonAction(_ sender: UIButton) {
     
    }
    
    @IBAction func automaticBorderSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func capturedimageButtonAction(_ sender: UIButton) {
       /// navigation()
        let saveVC = storyboard?.instantiateViewController(withIdentifier: "FoldersListGridVC") as! FoldersListGridVC
               self.navigationController?.pushViewController(saveVC, animated: true)
        
    }
    
    func navigation()  {
        let saveVC = storyboard?.instantiateViewController(withIdentifier: "SaveVC") as! SaveVC
        self.navigationController?.pushViewController(saveVC, animated: true)
    }
    
    
}
