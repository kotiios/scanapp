//
//  UIColor.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    //MARK: Custom Colours
    enum CustomColor {
        case darkBlue
        case lightBlue
        case lightGray
        
        func color(alpha: CGFloat = 1.0) -> UIColor {
            var colorToReturn:UIColor?
            switch self {
            case .darkBlue:
                colorToReturn = #colorLiteral(red: 0.1450980392, green: 0.4156862745, blue: 0.9607843137, alpha: 1).withAlphaComponent(alpha)
            case .lightBlue:
                colorToReturn = #colorLiteral(red: 0.1960784314, green: 0.7176470588, blue: 0.9803921569, alpha: 1).withAlphaComponent(alpha)
            case .lightGray:
                colorToReturn = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1).withAlphaComponent(alpha)
            }
            return colorToReturn!
        }
    }
    
    //MARK: Check Light Colour
    var isLight: Bool {
        guard let components = cgColor.components, components.count > 2 else {return false}
        let brightness = ((components[0] * 299) + (components[1] * 587) + (components[2] * 114)) / 1000
        return (brightness > 0.5)
    }
    
    static var random: UIColor {
        let r:CGFloat  = .random(in: 0...1)
        let g:CGFloat  = .random(in: 0...1)
        let b:CGFloat  = .random(in: 0...1)
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    
    convenience init(hex: String, alpha: Double = 1.0) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (1, 1, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(255 * alpha) / 255)
    }
    
    var hexa: String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return NSString(format:"#%06x", rgb) as String
    }
}

