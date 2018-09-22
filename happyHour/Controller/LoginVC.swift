//
//  LoginVC.swift
//  happyHour
//
//  Created by Emir Kartal on 20.08.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: SignUpTextField!
    @IBOutlet weak var passwordTextField: SignUpTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        //MARK: Tap Gesture Define
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        
    }

    @IBAction func loginBtnTapped(_ sender: UIButton) {
        
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (userDataResult, error) in
            if error != nil {
                SVProgressHUD.showError(withStatus: "Something Wrong!!!")
                
            } else {
                SVProgressHUD.showSuccess(withStatus: "Successful")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "toHomeVC", sender: self)
            }
        }
        
        
        
    }
    @IBAction func signUpBtnTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toSignUpVC", sender: self)
    }
    
    @objc func closeKeyboard() {
        
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
    }
    

}
