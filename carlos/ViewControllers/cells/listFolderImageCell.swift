//
//  listFolderImageCell.swift
//  carlos
//
//  Created by avula koti on 25/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class listFolderImageCell: UITableViewCell {

    @IBOutlet weak var notificationimage: UIImageView!
    @IBOutlet weak var fileNameLabel: UILabel!
    @IBOutlet weak var fileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
