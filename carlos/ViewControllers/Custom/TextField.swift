//
//  TextField.swift
//  carlos
//
//  Created by IOS on 23/02/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class TextField: UITextField {
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var imageColor: UIColor = UIColor.white {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var rightPadding: CGFloat = 0.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var placeholderColor: UIColor = UIColor.lightGray {
        didSet {
            updateView()
        }
    }
    
    // Provides padding for images
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x -= rightPadding
        return textRect
    }
    
    //Update Views
    func updateView() {
        
        //Left Image
        if let image = leftImage {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20+leftPadding, height: 25))
            let paddingImage = UIImageView()
            paddingImage.image = image
            paddingImage.tintColor = imageColor
            paddingImage.contentMode = .scaleAspectFit
            paddingImage.frame = CGRect(x: 0, y: 2, width: 20, height: 20)
            paddingView.addSubview(paddingImage)
            leftView = paddingView
            leftViewMode = UITextField.ViewMode.always
        }
        else {
            let paddingView = UIView(frame: CGRect(x: 0, y: 2, width: leftPadding, height: 0))
            self.leftView = paddingView
            leftViewMode = UITextField.ViewMode.always
        }
        
        //Right Image
        if let image = rightImage {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 25+leftPadding, height: 25))
            let paddingImage = UIImageView()
            paddingImage.image = image
            paddingImage.tintColor = imageColor
            paddingImage.contentMode = .scaleAspectFit
            paddingImage.frame = CGRect(x: 0, y: 5, width: 15, height: 15)
            paddingView.addSubview(paddingImage)
            rightView = paddingView
            rightView?.isUserInteractionEnabled = false
            rightViewMode = UITextField.ViewMode.always

        }
        else {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding, height: 0))
            self.rightView = paddingView
            rightViewMode = UITextField.ViewMode.always
        }
        
        // Placeholder text color
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: placeholderColor])
    }
}
