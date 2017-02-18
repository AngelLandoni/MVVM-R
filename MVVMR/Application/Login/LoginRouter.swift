//
//  LoginRouter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/6/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation
import UIKit

// try to change the class with a struct
class LoginRouter: Router {
    private weak var view : LoginView? = nil
    
    // MARK: Internal methods
    
    func getMainView() -> LoginView {
        guard let strongView = view else {
            let strongView: LoginView = LoginView(nibName: "LoginView", bundle: nil)
            strongView.setRouter(self)
            view = strongView
            return strongView
        }
        return strongView
    }
    
    // This method shows the terms and conditions
    // view.
    func moveTermsAndConditions() {
        guard let strongView = view else { fatalError("LoginRouter: view is null.") }
        let termsAndConditionsRouter: TermsAndCoditionsRouter = TermsAndCoditionsRouter()
        //vc.view.backgroundColor = UIColor.
        strongView.presentViewController(
            termsAndConditionsRouter.getMainView(),
            animated: true, completion: nil
        )
    }
    
    // This method move the app to the 
    // correct tab controller.
    func moveToApp() {
        weak var window = getWindow()
        // Exit method if the window is nil
        guard window != nil else { return }
        
        let homeRouter: HomeRouter = HomeRouter()
        let aboutRouter: AboutRouter = AboutRouter()
        let settingsRouter: SettingsRouter = SettingsRouter()
        
        // Alloc the tab bar.
        let tabBar: ALTabBar = ALTabBar()
        tabBar.setViewControllers([
                homeRouter.getMainView(),
                aboutRouter.getMainView(),
                settingsRouter.getMainView()
            ],
            animated: false
        )
        // Set the root view controller
        window?.rootViewController = tabBar
    }
}
