//
//  HomeRouter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/9/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation
import UIKit

final class HomeRouter: Router {
    private weak var view: ALNavigationController? = nil

    func getMainView() -> ALNavigationController {
        guard let strongView: ALNavigationController = view else {
            let mainView: HomeView = HomeView(nibName: "HomeView", bundle: nil)
            mainView.setRouter(self)
            let strongView: ALNavigationController = ALNavigationController(rootViewController: mainView)
            view = strongView
            return strongView
        }
        return strongView
    }
    
    func moveToConfiguration() {
        guard let strongView: ALNavigationController = view else { return }
        let configurationRouter: GeneralConfigurationRouter = GeneralConfigurationRouter()
        strongView.pushViewController(configurationRouter.getMainView(), animated: true)
    }
}