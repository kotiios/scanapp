//
//  SaveEditVC.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class SaveVC: BaseVC {
    
    @IBOutlet weak var imageDoc: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        saveButton.layer.cornerRadius = saveButton.frame.height/2
         
     
    }
  

    override func viewWillAppear(_ animated: Bool) {
        
//        setTitle(title: "Edit", showBack: true, isLight: false,istransculent: true,alpha: 0.7)
//        setBackButton(image: #imageLiteral(resourceName: "back-button"))
    }
    
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        
        let ChangeSize = storyboard?.instantiateViewController(withIdentifier: "EditVC") as! EditVC
        self.navigationController?.pushViewController(ChangeSize, animated: true)
        
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func sizeButton(_ sender: UIButton) {
        
        navigation()
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func navigation() {
        let ChangeSize = storyboard?.instantiateViewController(withIdentifier: "ChangeSizeVC") as! ChangeSizeVC
        self.navigationController?.pushViewController(ChangeSize, animated: true)
    }
}
