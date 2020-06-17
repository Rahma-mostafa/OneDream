//
//  DetialsViewController.swift
//  OneDream
//
//  Created by MacBook Pro on 6/6/20.
//  Copyright © 2020 rahma. All rights reserved.
//

import UIKit

class DetialsViewController: UIViewController {
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var firstContainerView: UIView!
    @IBOutlet var secondContainerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            firstContainerView.alpha = 1
            secondContainerView.alpha = 0

        }else{
            firstContainerView.alpha = 0
            secondContainerView.alpha = 1

        }
       
    }
    

}
