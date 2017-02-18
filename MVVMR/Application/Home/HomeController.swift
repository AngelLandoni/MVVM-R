//
//  HomeController.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/9/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation

final class HomeController {
    var router: HomeRouter? = nil
}

// MARK: - Actions -

extension HomeController {
    // This methods shows the test view
    // into the navigation controller.
    func showConfigurationView() {
        guard let strongRouter: HomeRouter = router else { return }
        strongRouter.moveToConfiguration()
    }
}