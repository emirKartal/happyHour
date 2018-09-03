//
//  SignUpVC.swift
//  happyHour
//
//  Created by Emir Kartal on 2.09.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailTextField: SignUpTextField!
    @IBOutlet weak var passwordTextField: SignUpTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tap Gesture Define
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        self.view.addGestureRecognizer(tapGesture)
       
    }
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        
        SVProgressHUD.show(withStatus: "Creating")
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (userData, error) in
            
            if error != nil {
                
                SVProgressHUD.showError(withStatus: "Something Went Wrong!!!")
                
            } else {
                
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "toHomeVC", sender: self)
                
            }
        }
    }
    @objc func closeKeyboard() {
        
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
    }
}
