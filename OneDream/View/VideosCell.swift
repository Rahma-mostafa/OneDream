//
//  VideosCell.swift
//  OneDream
//
//  Created by MacBook Pro on 6/9/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit
protocol videoCellDelegate {
    func didTapWatchNow(url: String)
}
class VideosCell: UITableViewCell {
    
    @IBOutlet var videoImageView: RoundedImageView!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var commentButton: UIButton!
    @IBOutlet var favButton: UIButton!
    @IBOutlet var likeButton: UIButton!
    
    var videoItem: Video!
    var delegate: videoCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setVideo(video: Video){
        videoItem = video
        titleLabel.text = video.title
        
    }
    @IBAction func onPlayButtonTapped(_ sender: Any) {
        delegate?.didTapWatchNow(url: videoItem.url)
    }

}
