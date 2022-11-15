//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 13.11.2022.
//

import UIKit

class GreetingViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
   // MARK: - Features
    
    var user = ""
    
    
    // MARK: - Life сycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user)"
        emojiLabel.text = "🖐"
        
    }
    
    // MARK: - IBActions
    
    @IBAction func logOutButtonPressed() {
    }
}
