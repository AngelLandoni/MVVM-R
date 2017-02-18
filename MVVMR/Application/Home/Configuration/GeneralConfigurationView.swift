//
//  GeneralConfiguration.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/12/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

final class GeneralConfigurationView: ALView {
    private var controller: GeneralConfigurationController = GeneralConfigurationController()
    
    func setupRouter(router: GeneralConfigurationRouter) {
        controller.router = router
    }
}

// MARK: - ALView virtual methods -

extension GeneralConfigurationView {

    override func configureObject() {
        title = "Configuration"
    }
}

// MARK: - IBActions -

private extension GeneralConfigurationView {

    @IBAction func pressMeButtonTap(sender: UIButton) {
        let alert: UIAlertController = UIAlertController(title: "Configuration", message: "Configuration alert", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        presentViewController(alert, animated: true, completion: nil)
    }
}