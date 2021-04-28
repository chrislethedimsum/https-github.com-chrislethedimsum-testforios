//
//  ViewController.swift
//  1-Navigation Controller
//
//  Created by Hua Zuo on 7/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    // Hide the Navigation Bar
            self.navigationController?.setNavigationBarHidden(true, animated: true)
        } 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

