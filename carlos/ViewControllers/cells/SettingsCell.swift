//
//  SettingsCell.swift
//  carlos
//
//  Created by avula koti on 24/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    @IBOutlet weak var imageSettings: UIImageView!
    @IBOutlet weak var nextindicator: UIImageView!
    
    @IBOutlet weak var settingsNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
