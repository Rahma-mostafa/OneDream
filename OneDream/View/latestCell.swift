//
//  latestCell.swift
//  OneDream
//
//  Created by MacBook Pro on 6/3/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit

class latestCell: UICollectionViewCell {
    @IBOutlet var pictureImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        pictureImageView.layer.cornerRadius = 8
           
    }
       
    
}
