//
//  UIFont.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//


import Foundation
import UIKit

extension UIFont {
    
    enum CustomFont: String {
        case regular = "ArialMT"
        case bold = "Arial-BoldMT"
        case medium = "PingFangSC-Semibold"
        case light = "PingFangSC-Light"
        
        func font(size: CGFloat = 15.0) -> UIFont {
            return UIFont(name: rawValue, size: size)!
        }
    }
}


