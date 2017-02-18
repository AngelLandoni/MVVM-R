//
//  Router.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation
import UIKit

class Router {
    func getApplication() -> AppDelegate {
        return UIApplication.sharedApplication().delegate as! AppDelegate
    }
    
    func getRootView() -> UIViewController? {
        return UIApplication.sharedApplication().keyWindow?.rootViewController
    }
    
    func getWindow() -> UIWindow? {
        return UIApplication.sharedApplication().keyWindow
    }
}