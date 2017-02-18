//
//  LoginView.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/6/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

class LoginView: ALView {
    @IBOutlet private weak var userNameLabel: UITextField!
    @IBOutlet private weak var passwordLabel: UITextField!
    
    private var controller : LoginController<LoginView> = LoginController<LoginView>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.delegate = self
    }
    
    func setRouter(router : LoginRouter) {
        controller.router = router
    }
}

// MARK: - IBActions

extension LoginView {
    // On tap login button.
    @IBAction func loginButtonTap(sender: UIButton) {
        controller.performLogin(
            withName: userNameLabel.text!,
            andPassword: passwordLabel.text!
        )
    }
    
    @IBAction func termsAndConditionsTap(sender: UIButton) {
        controller.showTermsAndConditions()
    }
}

// MARK: - LoginControllerDelegate

extension LoginView : LoginControllerDelegate {
    func loginSuccess() {
        print("Login success")
    }
    
    func loginFail() {
        print("Login fail")
    }
}
