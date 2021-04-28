//
//  HighScoreViewController.swift
//  1-Navigation Controller
//
//  Created by Hua Zuo on 7/4/21.
//

import UIKit

class HighScoreViewController: UIViewController {
    
    
    let score = UserDefaults.standard.integer(forKey: "Score")
    let name = UserDefaults.standard.string(forKey: "Name")
    


    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(UserDefaults.standard.integer(forKey: "Score"))
        nameLabel.text = String(UserDefaults.standard.string(forKey: "Name")!)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func returnMainPage(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
