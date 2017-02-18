//
//  ALNavigationController.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/9/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

class ALNavigationController: UINavigationController {
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        configureStyle()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}

// MARK: - Configuration -

extension ALNavigationController {
    func configureStyle() {
        navigationBar.translucent = false
        navigationBar.barTintColor = ALTabBarTheme.Normal.barTintColor
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        navigationBar.tintColor = UIColor.whiteColor()
    }
}
