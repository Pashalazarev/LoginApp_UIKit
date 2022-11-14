//
//  ViewController.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 13.11.2022.
//

import UIKit
 
final class MainViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private features
    private let emptyLogIn = ""
    private let emptyPassword = ""
    
    private let userLogIn = "Pavel"
    private let userPassword = "1234"
    
    
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else {return}
        greetingVC.user = userLogIn
    }
    
    
    
    // MARK: - IBActions
    
    @IBAction func logInButton() {
        if userNameTF.text != userLogIn || passwordTF.text != userPassword {
            showAlert(with: "Wrong User Name or Password",
                      and: "Please input correct data")
            userNameTF.text = emptyLogIn
            passwordTF.text = emptyPassword
        }
    }
    
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "", and: "User name is \(userLogIn)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "", and: "Password is \(userPassword)")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

    // MARK: - Allert Controller

extension MainViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
// MARK: - Hide Keybord
extension MainViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
