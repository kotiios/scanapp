//
//  customSlider.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class designableSlider: UISlider {
    @IBInspectable override var thumbImage: UIImage? {
        didSet {
            setThumbImage(currentThumbImage, for: .normal)
        }
    }
}
