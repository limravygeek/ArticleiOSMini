//
//  RegisterViewController.swift
//  Article
//
//  Created by lim ravy on 31/5/2560 BE.
//  Copyright © 2560 BE lim ravy. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onClickButtonCancel(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true,completion: nil)
    }
    
    
    
    @IBAction func onClickButtonClose(_ sender: Any) {
        
    navigationController?.popViewController(animated: true)
        dismiss(animated: true,completion: nil)
    }
}
