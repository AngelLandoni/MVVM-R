//
//  AppDelegate.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/5/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var window: UIWindow?
}

extension AppDelegate : UIApplicationDelegate {

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Setup the first view.
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let loginRouter: LoginRouter = LoginRouter()
        window?.rootViewController = loginRouter.getMainView()
        window?.makeKeyAndVisible()
        return true
    }
}

