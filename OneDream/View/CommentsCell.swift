//
//  CommentsCell.swift
//  OneDream
//
//  Created by MacBook Pro on 6/13/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit
import Cosmos

class CommentsCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var rateView: CosmosView!
    @IBOutlet var commentsLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        rateView.settings.updateOnTouch = false

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
