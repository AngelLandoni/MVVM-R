//
//  AboutRouter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/11/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation

final class AboutRouter: Router {
    weak var view: AboutView? = nil
    
    func getMainView() -> AboutView {
        guard let strongView = view else {
            let mainView: AboutView = AboutView(nibName: "AboutView", bundle: nil)
            mainView.setRouter(self)
            view = mainView
            return mainView
        }
        return strongView
    }
}