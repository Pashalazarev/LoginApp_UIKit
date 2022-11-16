//
//  PersonDataViewController.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 15.11.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var currentAgeLabel: UILabel!
    @IBOutlet var yearOfBirthLabel: UILabel!
    @IBOutlet var cityOfLivingLabel: UILabel!
    @IBOutlet var userHobbiesLabel: UILabel!
    
   // MARK: - Private Fetures
    private let user = User.getUserData()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "Full name: \(user.person.fullName)"
        currentAgeLabel.text = "My age is: \(user.person.currentAge)"
        yearOfBirthLabel.text = "Year of birth is: \(user.person.yearOfBirth)"
        cityOfLivingLabel.text = "City og living is: \(user.person.cityOfLiving)"
        userHobbiesLabel.text = "My hobbies are: \(user.person.userHobbies)"
        view.backgroundColor = .systemTeal

    }
    

}


 
