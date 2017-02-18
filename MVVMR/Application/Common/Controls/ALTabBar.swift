//
//  ALTabBar.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

class ALTabBar: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStyle()
    }
}

// MARK: - Configuration -

extension ALTabBar {

    func configureStyle() {
        tabBar.translucent = false
        tabBar.barTintColor = ALTabBarTheme.Normal.barTintColor
        tabBar.tintColor = UIColor.whiteColor()
    }
}
