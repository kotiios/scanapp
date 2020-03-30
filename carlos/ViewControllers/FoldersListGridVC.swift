//
//  imagesVC.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class FoldersListGridVC: BaseVC {
    
    @IBOutlet weak var gridImageIcon: UIImageView!
    
    @IBOutlet weak var listImageIcon: UIImageView!
    
    @IBOutlet weak var GridCollectionView: UICollectionView!
    @IBOutlet weak var viewCollectionView: UIView!

    @IBOutlet weak var listTableview: UITableView!
    
    @IBOutlet weak var viewGridListHeight: NSLayoutConstraint!
    @IBOutlet weak var viewGridList: UIView!
  
    @IBOutlet weak var viewSearchTextField: UIView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        viewSearchTextField.layer.cornerRadius = viewSearchTextField.frame.height/2
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        setTitle(title: "Images", showBack: true, isLight: true, alpha: 1, barTintColor: #colorLiteral(red: 0.9410940409, green: 0.9412292838, blue: 0.9410645366, alpha: 1))
//        setRightButton(image: #imageLiteral(resourceName: "add-folder"))
    }
    
    override func rightButtonAction(sender: UIButton) {
        showAlert(title: "Create Folder", message: .none, cancelTitle: "Cancel", cancelAction: .none, okayTitle: "Create", .none, txtFieldHide: false,textPlacehlder: "Enter Folder Name")
    }
    

    @IBAction func addFolderActionButton(_ sender: UIButton) {
    ////    showAlert(title: "Create Folder", message: .none, cancelTitle: "Cancel", cancelAction: .none, okayTitle: "Create",.none,txtFieldHide: false,textPlacehlder: "Enter Folder Name")
        let vc = storyboard?.instantiateViewController(withIdentifier: "ScanVC") as! ScanVC
     
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    @IBAction func GridViewButtonAction(_ sender: Any) {
        
        GridCollectionView.reloadData()
        viewCollectionView.isHidden = false
         GridCollectionView.reloadData()
        gridImageIcon.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        listImageIcon.tintColor = #colorLiteral(red: 0.6979988217, green: 0.721729517, blue: 0.7386263013, alpha: 1)
    }
 
    
    @IBAction func listViewButtonAction(_ sender: UIButton) {
        viewCollectionView.isHidden = true
        listTableview.reloadData()
        gridImageIcon.tintColor = #colorLiteral(red: 0.6979988217, green: 0.721729517, blue: 0.7386263013, alpha: 1)
        listImageIcon.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        
    }

    
    @IBAction func backButton(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func rightCreateFolderButton(_ sender: UIButton) {
        
        showAlert(title: "Create Folder", message: .none, cancelTitle: "Cancel", cancelAction: .none, okayTitle: "Create", .none, txtFieldHide: false,textPlacehlder: "Enter Folder Name")
    }
    
    
    
    func navigation() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LockScreenVC") as! LockScreenVC
        vc.comefrom = "Enter Pin"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}



extension FoldersListGridVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folderArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTableview.dequeueReusableCell(withIdentifier: "listFolderImageCell") as! listFolderImageCell
        cell.fileImage.image = UIImage(named: folderArray[indexPath.row])
        cell.notificationimage.image = UIImage(named: notificationArray[indexPath.row])
        cell.fileNameLabel.text = nameLabelArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation()
    }
    
}

extension FoldersListGridVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return folderArraygrid.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = GridCollectionView.dequeueReusableCell(withReuseIdentifier: "GridViewFoldersCell", for: indexPath) as! GridViewFoldersCell
        cell.folderName.text = namelabelArrayGrid[indexPath.row]
        cell.GridImage.image = UIImage(named: folderArraygrid[indexPath.row])
        cell.notificationImage.image = UIImage(named: notificationarraygrid[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: GridCollectionView.frame.width/3.5, height: 110)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigation()
    }
    
    
}
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if gridViewValue == true {
//            return folderimagesArray.count
//        }else {
//            return folderimagesArray.count
//        }
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if gridViewValue == true {
//            let cell = CollectionviewFolders.dequeueReusableCell(withReuseIdentifier: "GridViewFoldersCell", for: indexPath) as! GridViewFoldersCell
//            cell.GridImage.image = UIImage(named: folderimagesArray[indexPath.row])
//            return cell
//        }else {
//
//            let cell = CollectionviewFolders.dequeueReusableCell(withReuseIdentifier: "ListViewFolderCell", for: indexPath) as! ListViewFolderCell
//            cell.listImage.image = UIImage(named: folderimagesArray[indexPath.row])
//            return cell
//
//        }
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if gridViewValue == true {
//            return CGSize(width: CollectionviewFolders.frame.width/3.5, height: 100)
//        }else {
//            return CGSize(width: CollectionviewFolders.frame.width, height: 80)
//        }
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//            navigation()
//        }
//    }


