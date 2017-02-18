//
//  SettingsRouter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/12/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation

final class SettingsRouter: Router {
    private weak var view: ALNavigationController? = nil
    
    func getMainView() -> ALNavigationController {
        let mainView: SettingsView = SettingsView()
        mainView.setRouter(self)
        let strongView: ALNavigationController = ALNavigationController(rootViewController: mainView)
        view = strongView
        return strongView
    }
}