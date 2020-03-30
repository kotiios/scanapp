//
//  EditVC.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class EditVC: BaseVC {
    
    @IBOutlet weak var EditImageName: UIButton!
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var viewFilters: UIView!
    @IBOutlet weak var DoneButton: UIButton!
    @IBOutlet weak var imageNameLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        
        slider.setThumbImage(UIImage(named: "brightness-circle"), for: UIControl.State.normal)
        
        viewFilters.isHidden = true
   // setRightButton(image: #imageLiteral(resourceName: "delete"))
      
        DoneButton.layer.cornerRadius = DoneButton.frame.height/2
         saveButton.layer.cornerRadius = saveButton.frame.height/2
    }
    
   
    
    
    override func viewWillAppear(_ animated: Bool) {
//        setTitle(title: "Edit", showBack: true, isLight: false, istransculent: true, alpha: 0.7, barTintColor: .black)
//        setBackButton(image: #imageLiteral(resourceName: "back-button"))
      //  setStatusBarColor(color: .black)
     
    }
    

    @IBAction func editNameButton(_ sender: UIButton) {
        
        showAlert(title: "Edit Name", message: .none, cancelTitle: kcancel, cancelAction: .none, okayTitle: kdone, .none,txtFieldHide: false,textPlacehlder: "Enter Image Name")
        
    }

   override func rightButtonAction(sender: UIButton) {
    showAlert(title: .none, message: "Are you sure, you want to \n delete the image ?", cancelTitle: kNo, cancelAction: nil, okayTitle: kyes, nil)
           }

    @IBAction func saveButtonAction(_ sender: UIButton) {
       //navigation()
        showAlert(title: "Success", message: "Image saved successfully", cancelTitle: .none, cancelAction: .none, okayTitle: kokey,navigation)
     
  
    }
    
    func navigation() {
         let vc = storyboard?.instantiateViewController(withIdentifier: "FoldersListGridVC") as! FoldersListGridVC
                      self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func cropButtonAction(_ sender: UIButton) {
    }
    
    
    @IBAction func filterButtonAction(_ sender: UIButton) {
        viewFilters.isHidden = false
    }
    
    @IBAction func sliderImage(_ sender: UISlider) {
        
    }
    
    @IBAction func DoneButton(_ sender: UIButton) {
        viewFilters.isHidden = true
    }
    
    @IBAction func BrightnessButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func ContrastButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func blurButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func whiteBlackActionButton(_ sender: UIButton) {
    }
    
    @IBAction func backButton(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func deleteButton(_ sender: UIButton) {
        
      showAlert(title: .none, message: "Are you sure, you want to \n delete the image ?", cancelTitle: kNo, cancelAction: nil, okayTitle: kyes, nil)
    }
    
    
}
