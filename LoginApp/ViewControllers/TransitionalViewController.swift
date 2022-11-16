//
//  UserTransitionalViewController.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 15.11.2022.
//

import UIKit

class TransitionalViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var infoUserButton: UIButton!
    
    @IBOutlet var titleItem: UINavigationItem!
    // MARK: - Features
    var user: User!
   // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        titleItem.title = user.person.fullName
        infoUserButton.setTitle("More information about \(user.person.name)", for: .normal)
        view.backgroundColor = .systemMint
    }
    


}
