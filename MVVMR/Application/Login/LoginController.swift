//
//  LoginController.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/6/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation

// MARK: Delegate

// This protocol sent the signal to the view.
@objc protocol LoginControllerDelegate: class {
    optional func loginSuccess()
    optional func loginFail()
}

// MARK: Controller.

final class LoginController<TypeDelegate : LoginControllerDelegate> {
    var router : LoginRouter? = nil
    weak var delegate : TypeDelegate? = nil
    
    init() {  }
    
    init(withDelegate customDelegate: TypeDelegate) {
        delegate = customDelegate
    }
}

// MARK: Public methods.

extension LoginController {
    
    // This method logins the user into the app.
    func performLogin(withName name: String, andPassword password: String) {
        // Keep in memory the delegate with a strong ref.
        guard let strongDelegate = delegate else { return }
        // If the data is incorrect extecute the login fail callback.
        // It should be loaded from a persistence storage.
        guard name == "name" && password == "password" else {
            strongDelegate.loginFail?()
            return
        }
        guard let strongRouter = router else { return }
        // Redirect to the correct view.
        strongRouter.moveToApp()
        // If the login is correct it should show the
        // correct view controller using the
        // TODO: implement router.
        strongDelegate.loginSuccess?()
    }
    
    func showTermsAndConditions() {
        // Keep in memory the delegate with a strong ref.
        guard let strongRouter = router else { fatalError("LoginController router is null.") }
        strongRouter.moveTermsAndConditions()
    }
}