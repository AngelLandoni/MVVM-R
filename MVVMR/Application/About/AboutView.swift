//
//  AboutView.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/11/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

final class AboutView: ALView {
    private var controller: AboutController = AboutController()
    
    func setRouter(router: AboutRouter) {
        controller.router = router
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

// MARK: - ALView virtual methods -

extension AboutView {
    
    override func configureObject() {
        title = "About"
    }
}