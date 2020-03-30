//
//  ImagesVC.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class ImagesVC: BaseVC {
    
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    var image = ["image-folder"]
    
    @IBOutlet weak var DoneButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DoneButton.layer.cornerRadius = DoneButton.frame.height/2

    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
//           setTitle(title: "Images", showBack: true, isLight: true, istransculent: false, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))
        
       }
    
    @IBAction func backButton(_ sender: UIButton) {
        
    }
    
}
extension ImagesVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imagesCollectionView.dequeueReusableCell(withReuseIdentifier: "imagesCell", for: indexPath) as! imagesCell
       // cell.imagesimage.image = UIImage(named: image[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: imagesCollectionView.frame.width/3.5, height: 110)
    }
    
    
    
}
