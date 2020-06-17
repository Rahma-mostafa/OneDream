//
//  HomeViewController.swift
//  OneDream
//
//  Created by MacBook Pro on 6/2/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit
struct Info{
    var image: String
    var title: String
}

class HomeViewController: BaseController {
    
    
    
    @IBOutlet var programsCollectionView: UICollectionView!
    @IBOutlet var latestCollectionView: UICollectionView!
    @IBOutlet var lastSeenCollectionView: UICollectionView!
    @IBOutlet var viewConstraint: NSLayoutConstraint!
    @IBOutlet var slideMenuView: UIView!
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var userNameLabel: UILabel!
    //    @IBOutlet var searchBar: UISearchBar!
    //variables
    var array:[Info] = [Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري"),Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري"),Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري")]
    var array2:[Info] = [Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري"),Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري"),Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري")]
     var array3:[Info] = [Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري"),Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري"),Info(image: "jeremy-ricketts-6ZnhM-xBpos-unsplash", title:"مسلسل كوري")]
//    var searchedElement:[Info] = [Info]() //update array
//    var searching = false
    //menu
    
    var isSideMenuHidden = true

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hiddenNav = true
        setup()
//        searchBar.delegate = self
        viewConstraint.constant = -450
        profileImageView.layer.cornerRadius = 39
        
        }
           

    
//     override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//            // Dispose of any resources that can be recreated.
//        }
//

    func setup(){
        programsCollectionView.dataSource = self
        programsCollectionView.delegate = self
        latestCollectionView.delegate = self
        latestCollectionView.dataSource = self
        lastSeenCollectionView.delegate = self
        lastSeenCollectionView.dataSource = self
     
    }
    

    
    @IBAction func onMenuButtonTapped(_ sender: Any) {
        if isSideMenuHidden{
        viewConstraint.constant = 0
        UIView.animate(withDuration: 0.1) {
            self.view.layoutIfNeeded()
            }
        }else{
        viewConstraint.constant = -450
        UIView.animate(withDuration: 0.3) {
        self.view.layoutIfNeeded()
            }
        }
        isSideMenuHidden = !isSideMenuHidden
    }
    
    @IBAction func onDismissButtonTapped(_ sender: Any) {
        viewConstraint.constant = -450
    }
}
extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == programsCollectionView {
            return array.count
        }else if collectionView == latestCollectionView{
            return array2.count
        }else{
            return array3.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == programsCollectionView{
            if let cell = programsCollectionView.dequeueReusableCell(withReuseIdentifier: "CountinuoCell", for: indexPath) as? CountinuoCell{
                     cell.pictureImageView.image = UIImage(named: array[indexPath.row].image)
                     cell.titleLabel.text = array[indexPath.item].title
                     return cell
                     }
        }else if collectionView == latestCollectionView{
            if let cell = latestCollectionView.dequeueReusableCell(withReuseIdentifier: "latestCell", for: indexPath) as? latestCell{
                cell.pictureImageView.image = UIImage(named: array2[indexPath.row].image)
                cell.titleLabel.text = array2[indexPath.item].title
                return cell
          }
            
        }else{
            if let cell = lastSeenCollectionView.dequeueReusableCell(withReuseIdentifier: "LastSeenCell", for: indexPath) as? LastSeenCell{
                cell.pictureImageView.image = UIImage(named: array3[indexPath.row].image)
                cell.titleLabel.text = array3[indexPath.item].title
                return cell
            }
            
        }
        return UICollectionViewCell()
    }

   
    
}
    


