//
//  WorkerProfileTableViewCell.swift
//  JobPortalApp
//
//  Created by Shehzad on 12/10/2020.
//  Copyright © 2020 Shehzad. All rights reserved.
//

import UIKit

class WorkerProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var workerAvatar: UIImageView!
    @IBOutlet weak var workerName: UILabel!
    @IBOutlet weak var workerSkill: UILabel!
    @IBOutlet weak var workerExperience: UILabel!
    
    
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        layoutIfNeeded()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
