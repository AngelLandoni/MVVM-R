//
//  GeneralConfigurationRouter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/12/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation

final class GeneralConfigurationRouter: Router {
    private weak var view: GeneralConfigurationView? = nil
    
    func getMainView() -> GeneralConfigurationView {
        guard let strongView: GeneralConfigurationView = view else {
            let mainView: GeneralConfigurationView = GeneralConfigurationView(nibName: "GeneralConfigurationView", bundle: nil)
            mainView.setupRouter(self)
            return mainView
        }
        return strongView
    }
}