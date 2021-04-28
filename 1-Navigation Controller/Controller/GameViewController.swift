//
//  GameViewController.swift
//  1-Navigation Controller
//
//  Created by Hua Zuo on 7/4/21.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var remainingTimeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var name: String?
    var remainingTime = 60
    var timer = Timer()
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = name
        remainingTimeLabel.text = String(remainingTime)
        
        
        
        // active timer, and generate bubble each second
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            timer in
            self.generateBubble()
            self.counting()
        }
        
    }
    
    @objc func counting() {
        remainingTime -= 1
        remainingTimeLabel.text = String(remainingTime)
        
        if remainingTime == 0 {
            timer.invalidate()
            
            // show HighScore Screen
            let vc = storyboard?.instantiateViewController(identifier: "HighScoreViewController") as! HighScoreViewController
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.setHidesBackButton(true, animated: true)
            
            if(score > UserDefaults.standard.integer(forKey: "Score")){
            UserDefaults.standard.set(score, forKey: "Score")
            UserDefaults.standard.set(name, forKey: "Name")
            }
            
            
        }
    }
    
    @objc func generateBubble() {
        let bubble = Bubble()
        bubble.animation()
        bubble.addTarget(self, action: #selector(bubblePressed), for: .touchUpInside)
        
        self.view.addSubview(bubble)
        
       
    }
    
    @IBAction func bubblePressed(_ sender: UIButton) {
        // remove pressed bubble from view
        sender.removeFromSuperview()
        score += 1
        scoreLabel.text = String(score)
    }
    
  


}
