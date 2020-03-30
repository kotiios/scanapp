//
//  CustomAlert.swift
//  carlos
//
//  Created by avula koti on 25/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import Foundation
import UIKit


typealias ButtonAction = (()->())


class CustomAlert: UIView {
    
    
    //MARK:- ShareOutlets
    
   
    @IBOutlet weak var pdfimage: UIImageView!
    @IBOutlet weak var jpegImage: UIImageView!
    @IBOutlet weak var pdfLabel: UILabel!
    @IBOutlet weak var jpegLabel: UILabel!
    
    
    
    //MARK: IBOutlets
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var view: UIView!
    @IBOutlet var popUpView: UIView!
    @IBOutlet var doneButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shareHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var shareStackView: UIStackView!
    
    @IBOutlet weak var rateView: UIView!
    
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    //MARK: Setup
    convenience init(title:String?, message: String?, cancelButtonTitle: String? = nil, doneButtonTitle: String = "Okay", image: UIImage? = nil, isRating: Bool = false, isTexFieldHidden:Bool = false, textFieldPlaceHolder:String?,shareviewisHidden:Bool = true) {
        
        self.init(frame: UIScreen.main.bounds)
        
        self.initialize(title:title, message: message, cancelButtonTitle: cancelButtonTitle, doneButtonTitle: doneButtonTitle, image: image, isRating: isRating, isTexFieldHidden: isTexFieldHidden,textFieldPlaceHolder: textFieldPlaceHolder,shareviewisHidden: shareviewisHidden )
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textField.layer.cornerRadius = textField.frame.height/2
        if shareStackView.isHidden == true {
            shareHeightConstraint.constant = 0
        }else {
            shareHeightConstraint.constant = 100
        }
        
        
    }
    
    //MARK: Private Methods
    private func nibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView { //Load View from Nib
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
    }
    
    private func initialize(title:String?, message: String?, cancelButtonTitle: String? = nil, doneButtonTitle: String = "Okay", image: UIImage? = nil, isRating: Bool = false,isTexFieldHidden:Bool = false ,textFieldPlaceHolder:String?,shareviewisHidden:Bool = true) {
        self.titleLabel.text = title
        let attributedString = NSMutableAttributedString(string: message ?? "")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0.5 // Whatever line spacing you want in points
        paragraphStyle.alignment = .center
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        self.messageLabel.attributedText = attributedString
        self.doneButton.setTitle(doneButtonTitle, for: .normal)
        self.titleLabel.isHidden = title == nil
        self.messageLabel.isHidden = message == nil
        self.cancelButton.isHidden = cancelButtonTitle == nil
        self.cancelButton.setTitle(cancelButtonTitle, for: .normal)
        
        //rateView.isHidden = !isRating
        //        if isRating {
        //            self.topConstraint.constant = 0.0
        //        }
        textField.isHidden = isTexFieldHidden
        textField.placeholder = textFieldPlaceHolder
        shareStackView.isHidden = shareviewisHidden
        
        
    }
    
    
    //MARK: Show Alert
    func show() {
        self.alpha = 0
        UIApplication.shared.keyWindow?.addSubview(self)
        UIView.animate(withDuration: 0.2) {
            self.alpha = 1.0
        }
    }
    
    func remove() {
        UIApplication.shared.keyWindow?.addSubview(self)
        UIView.animate(withDuration: 0.2, delay: 0.0, animations: {
            self.alpha = 0
        }, completion: {(success) in
            self.removeFromSuperview()
        })
    }
    
    //MARK: IBActions
    @IBAction func cancelButtonAction(_ sender: UIButton) {
        self.remove()
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        self.remove()
    }
    
    @IBAction func pdfAction(_ sender: UIButton) {
        
        pdfimage.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        jpegImage.tintColor = #colorLiteral(red: 0.569252789, green: 0.5721973777, blue: 0.5687574148, alpha: 1)
        pdfLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        jpegLabel.textColor = #colorLiteral(red: 0.5685759187, green: 0.5686604977, blue: 0.5685574412, alpha: 1)
        
    }
    
    @IBAction func jpegAction(_ sender: Any) {
        pdfimage.tintColor = #colorLiteral(red: 0.5724971294, green: 0.5725823045, blue: 0.5724785924, alpha: 1)
        jpegImage.tintColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        jpegLabel.textColor = #colorLiteral(red: 0.9485111833, green: 0.5414716005, blue: 0.2343195677, alpha: 1)
        pdfLabel.textColor = #colorLiteral(red: 0.5685759187, green: 0.5686604977, blue: 0.5685574412, alpha: 1)
        
        
    }
    
    
}

//For Handle Action
class ClosureSleeve {
    let closure: ()->()
    
    init (_ closure: @escaping ()->()) {
        self.closure = closure
    }
    
    @objc func invoke () {
        closure()
    }
}

//Add Target With Closure
extension UIControl {
    func addTarget (action: @escaping ()->()) {
        let sleeve = ClosureSleeve(action)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: .touchUpInside)
        objc_setAssociatedObject(self, String(ObjectIdentifier(self).hashValue) + String(UIControl.Event.touchUpInside.rawValue), sleeve,
                                 objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
    }
}

extension UIApplication {
    
    class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)
            
        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)
            
        } else if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
}

