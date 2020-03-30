//
//  UIView.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    var half: CGFloat {
        return self.frame.height/2
    }
    
    func set(radius: CGFloat, borderColor: UIColor = UIColor.clear, borderWidth: CGFloat = 0.0) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
    }
    
    func fadeIn(duration: TimeInterval = 0.3) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
    
    func fadeOut(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.0
        })
    }
    
    func setGradient(with color1: UIColor = UIColor.CustomColor.darkBlue.color(), color2: UIColor = UIColor.CustomColor.lightBlue.color()) -> UIImage? {
        let gradientLayer = CAGradientLayer()
        var updatedFrame = self.bounds
        updatedFrame.size.height += UIApplication.shared.statusBarFrame.size.height
        gradientLayer.frame = updatedFrame
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0) // Horizontal gradient start
        gradientLayer.endPoint = CGPoint(x: 0.9, y: 0.0) // Horizontal gradient end
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    func dropShadow() {
        self.layer.cornerRadius = 25.0
        let shadowPath2 = UIBezierPath(rect: self.bounds)
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(2.0))
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 25.0
        self.layer.shadowPath = shadowPath2.cgPath
    }

    func addGradient(){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors =   [UIColor.CustomColor.darkBlue.color(),UIColor.CustomColor.lightBlue.color()]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = self.layer.frame
        self.layer.insertSublayer(gradient, at: 0)
        //Use different colors
         self.layer.addSublayer(gradient)
    }
     func setGradientBackground(){
            let gradientLayer = CAGradientLayer()

            gradientLayer.frame = self.bounds

            gradientLayer.colors = [UIColor.CustomColor.darkBlue.color(),UIColor.CustomColor.lightBlue.color()]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
            gradientLayer.locations = [ 0.0, 1.0]


            self.layer.addSublayer(gradientLayer)
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }

}


//
//extension Notification.Name {
//    static let didGetNotification = Notification.Name("didGetNotification")
//    static let didGetToken = Notification.Name("didGetToken")
//}

extension String {
  var isBackspace: Bool {
    let char = self.cString(using: String.Encoding.utf8)!
    return strcmp(char, "\\b") == -92
  }
}

