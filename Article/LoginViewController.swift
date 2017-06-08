//
//  LoginViewController.swift
//  Article
//
//  Created by lim ravy on 31/5/2560 BE.
//  Copyright © 2560 BE lim ravy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    let username = "lim ravy"
    let password = "123"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        let username = UserDefaults.standard.value(forKey: "username") as? String
//        if username != nil || username != ""{
//            // Logged in
//            print("Already logged in")
//            performSegue(withIdentifier: "segue_login", sender: nil)
//        }
    }

    @IBAction func onClickButtonLogin(_ sender: Any) {
        
        let inputUsername = UsernameTextField.text!
        let inputPassword = PasswordTextField.text!
        
        if login(withUsername: inputUsername, andPassword: inputPassword) {
            performSegue(withIdentifier: "segue_login", sender: nil)
            // Save username
//            UserDefaults.standard.set(inputUsername, forKey: "username")
//            UserDefaults.standard.synchronize()
//            print("Save username")
        } else {
            print("Invalid username or password")
        }
    }
    
    func login(withUsername username : String, andPassword password: String) -> Bool {
        if username == self.username && password == self.password {
            return true
        } else {
            return false
        }
    }
}
