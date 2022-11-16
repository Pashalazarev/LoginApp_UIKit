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
    
    var user: User!
    
    
    // MARK: - Lifeсycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user.login)"
        emojiLabel.text = "🖐"
        view.backgroundColor = .systemCyan
        
    }
    
    // MARK: - IBActions
    
    @IBAction func logOutButtonPressed() {
    }
}
