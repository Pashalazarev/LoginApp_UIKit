//
//  UserTransitionalViewController.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 15.11.2022.
//

import UIKit

class UserTransitionalViewController: UIViewController {
    @IBOutlet var infoUserButton: UIButton!
    
    private let user = User.getUserData()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func infoUserButtonPressed() {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
