//
//  BaseVC.swift
//  carlos
//
//  Created by avula koti on 21/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//
import Foundation
import UIKit
import AVFoundation
import Photos
import MobileCoreServices

class BaseVC: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        UITextField.appearance().tintColor = .black
       
       setStatusBarColor(color: .black)
    }

    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return.lightContent
      }
    

    func setTitle(title: String, showBack: Bool = true, isLight: Bool = false,istransculent:Bool = true,alpha:CGFloat = 0.5, barTintColor:UIColor = .black) {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.barTintColor = barTintColor
        self.navigationController?.navigationBar.alpha = alpha
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = istransculent
        self.navigationController?.navigationBar.layoutIfNeeded()
        self.navigationController?.navigationBar.setNeedsLayout()

        self.navigationController?.view.backgroundColor = .clear

        if UIDevice.current.userInterfaceIdiom == .pad{
            self.navigationController?.navigationBar.titleTextAttributes =
                [NSAttributedString.Key.foregroundColor: isLight ? UIColor.black: UIColor.white,
                 NSAttributedString.Key.font: UIFont.CustomFont.bold.font(size: 22.0)]
        }else{
            self.navigationController?.navigationBar.titleTextAttributes =
                [NSAttributedString.Key.foregroundColor: isLight ? UIColor.black: UIColor.white,
                 NSAttributedString.Key.font: UIFont.CustomFont.medium.font(size: 17.0)]
        }
        if let parent = self.parent, parent.isKind(of: UITabBarController.self) {
            self.parent?.title = title
        }
        else {
            self.title = title
        }
        if showBack {
            self.setBackButton()
        }
    }
    func setBackButton(image: UIImage = #imageLiteral(resourceName: "back-buttonBlack.png")){
        let backButton = UIButton() //Custom back Button
        backButton.frame = CGRect(x: 0, y: 0 , width: 15, height: 50)
        backButton.setImage(image, for: .normal)
        backButton.addTarget(self, action: #selector(self.backButtonAction), for: .touchUpInside)
        let leftBarButton = UIBarButtonItem()
        leftBarButton.customView = backButton
        self.navigationItem.leftBarButtonItem = leftBarButton
       
        if let parent = self.parent, parent.isKind(of: UITabBarController.self) {
            self.parent!.navigationItem.setLeftBarButtonItems([leftBarButton], animated: false)
        }
        else {
            self.navigationItem.setLeftBarButtonItems([leftBarButton], animated: false)
        }
       
        setStatusBarColor(color: .black)
        
    }
    
    @objc func backButtonAction() {
        let navObj = self.navigationController?.popViewController(animated: true)
        if navObj == nil {
            self.navigationController?.dismiss(animated: true, completion: nil)
            self.dismiss(animated: true, completion: nil)
        }
        
        
        
        
    //MARK:- popToView
        func popToView() {
            self.navigationController?.popViewController(animated: true)
        }
        
        
    }
    //MARK:- statusbar color
    func setStatusBarColor(color: UIColor) {
        if #available(iOS 13.0, *) {

            let app = UIApplication.shared
            let statusBarHeight: CGFloat = app.statusBarFrame.size.height

            let statusbarView = UIView()
            statusbarView.backgroundColor = color
            view.addSubview(statusbarView)

            statusbarView.translatesAutoresizingMaskIntoConstraints = false
            statusbarView.heightAnchor
                .constraint(equalToConstant: statusBarHeight).isActive = true
            statusbarView.widthAnchor
                .constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
            statusbarView.topAnchor
                .constraint(equalTo: view.topAnchor).isActive = true
            statusbarView.centerXAnchor
                .constraint(equalTo: view.centerXAnchor).isActive = true

        } else {
            let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
            statusBar?.backgroundColor = color
        }

    }
    
    func setRightButton(image: UIImage? = nil, title: String? = nil){
        
        let backButton = UIButton() //Custom back Button
        backButton.frame = CGRect(x: 0, y: 0, width: 20, height: 45)
        if title != nil {
            backButton.setTitle(title, for: .normal)
            backButton.setTitleColor(UIColor.white, for: .normal)
            if UIDevice.current.userInterfaceIdiom == .pad{
                backButton.titleLabel?.font = UIFont.CustomFont.regular.font(size: 20.0)
            }else{
                backButton.titleLabel?.font = UIFont.CustomFont.regular.font()
            }
            
        }
        else {
            backButton.setImage(image, for: .normal)
        }
        backButton.addTarget(self, action: #selector(self.rightButtonAction(sender:)), for: .touchUpInside)
        let rightBarButton = UIBarButtonItem()
        rightBarButton.customView = backButton
        self.navigationItem.rightBarButtonItem = rightBarButton
        let negativeSpacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -10;
        
        if let parent = self.parent, parent.isKind(of: UITabBarController.self) {
            self.parent!.navigationItem.setRightBarButtonItems([rightBarButton, negativeSpacer], animated: false)
        }
        else {
            self.navigationItem.setRightBarButtonItems([rightBarButton, negativeSpacer], animated: false)
        }
    }
    
    @objc func rightButtonAction(sender: UIButton) {
         
     }
     
     @objc func rightSecondButtonAction(sender: UIButton){
         
     }
    
    //MARK:- Alert Methods

    func showAlert(title:String? = nil, message: String?, cancelTitle: String? = nil,  cancelAction: ButtonAction? = nil, okayTitle: String = "OK", _ okayAction: ButtonAction? = nil,txtFieldHide: Bool = true,textPlacehlder:String = "",shareviewisHidden:Bool = true) {
        let alert = CustomAlert(title: title, message: message, cancelButtonTitle: cancelTitle, doneButtonTitle: okayTitle,isTexFieldHidden: txtFieldHide,textFieldPlaceHolder: textPlacehlder,shareviewisHidden:shareviewisHidden)
        alert.cancelButton.addTarget {
           
            cancelAction?()
            alert.remove()
        }
        alert.doneButton.addTarget {
            okayAction?()
            alert.remove()
        }
        alert.show()
    }
}
