//
//  CommentsViewController.swift
//  OneDream
//
//  Created by MacBook Pro on 6/12/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit
import Cosmos


class CommentsViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var ratingView: CosmosView!
    //variabls
    var commentsArray:[Comments] = [Comments(name: "محمود احمد", comment: "ممتاز", rate: 4),Comments(name: "محمود احمد", comment: "ممتاز", rate: 4),Comments(name: "محمود احمد", comment: "ممتاز", rate: 4),Comments(name: "محمود احمد", comment: "ممتاز", rate: 4),Comments(name: "محمود احمد", comment: "ممتاز", rate: 4),Comments(name: "محمود احمد", comment: "ممتاز", rate: 4)]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()

    }
    func setUp(){
        tableView.delegate = self
        tableView.dataSource = self
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// MARK: - Comments Table View
extension CommentsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CommentsCell", for: indexPath)as? CommentsCell{
            cell.nameLabel.text = commentsArray[indexPath.item].name
            cell.commentsLabel.text = commentsArray[indexPath.item].comment
            cell.rateView.rating = commentsArray[indexPath.item].rate ?? 0
            
            return cell
        }
        return UITableViewCell()
    }
    
    
}
