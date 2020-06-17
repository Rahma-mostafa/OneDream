//
//  VideosViewController.swift
//  OneDream
//
//  Created by MacBook Pro on 6/9/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit
import SafariServices
class VideosViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var videos:[Video] = [Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١"),Video(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", url: "https://www.youtube.com/watch?v=VQzcdorrhHY", title: "الحلقه : ١")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()

        
    }
    func setUp(){
        tableView.dataSource = self
        tableView.delegate = self
    }
   
}
extension VideosViewController: videoCellDelegate{
       func didTapWatchNow(url: String){
           let videoURL = URL(string: url)!
           let safariVC = SFSafariViewController(url: videoURL)
           self.present(safariVC, animated: true, completion: nil)
       }
   }
extension VideosViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "VideosCell", for: indexPath) as? VideosCell{
            cell.videoImageView.image = UIImage(named: videos[indexPath.row].image!)
            cell.titleLabel.text = videos[indexPath.row].title!
            let video = videos[indexPath.row]
                cell.setVideo(video: video)
                cell.delegate = self
            cell.commentButton.tag = indexPath.row
            cell.commentButton.addTarget(self, action: Selector(("getComments")), for: .touchUpInside)
           
            return cell
            
        }
       
                   
        return UITableViewCell()
    }
    @objc func getComments(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let scene = storyboard.instantiateViewController(identifier: "CommentsViewController")
        navigationController?.pushViewController(scene, animated: true)
    }
                      
    
    
}
