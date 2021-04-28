//
//  BlueViewController.swift
//  1-Navigation Controller
//
//  Created by Hua Zuo on 7/4/21.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var timeNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider(_ sender: UISlider) {
        timeNumber.text = String(Int(sender.value))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToGame" {
            let VC = segue.destination as! GameViewController
            VC.name = nameTextField.text!
            VC.remainingTime = Int(timeSlider.value)
        }
    }
   
  
}
