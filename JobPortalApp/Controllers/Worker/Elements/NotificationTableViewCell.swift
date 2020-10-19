//
//  NotificationTableViewCell.swift
//  JobPortalApp
//
//  Created by Shehzad on 12/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var notifDetail: UILabel!
    @IBOutlet weak var notifImage: UIImageView!
    @IBOutlet weak var userImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
