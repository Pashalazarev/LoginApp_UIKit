//
//  ViewController.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 13.11.2022.
//

import UIKit
 
final class LoginViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private features
    private let user = User.getUserData()
    
    private let emptyLogIn = ""
    private let emptyPassword = ""
    
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let tabBarVC = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarVC.viewControllers else {return}
        
        for viewController in viewControllers {
            if let greetingVC = viewController as? GreetingViewController {
                greetingVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let transitionVC = navigationVC.topViewController as? TransitionalViewController else {return}
                transitionVC.user = user
            }
        }
    }
    
    // MARK: - IBActions
    
    @IBAction func logInButton() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(with: "Wrong User Name or Password",
                      and: "Please input correct data")
            userNameTF.text = emptyLogIn
            passwordTF.text = emptyPassword
        }
    }
    
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "", and: "User name is \(user.login)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "", and: "Password is \(user.password)")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

    // MARK: - Allert Controller

extension LoginViewController {
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
extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
