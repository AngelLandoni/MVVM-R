//
//  TermsAndConditionsView.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

final class TermsAndConditionsView: ALView {
    // Ref to the controller.
    private var controller: TermsAndConditionsController = TermsAndConditionsController()
    
    func setRouter(router: TermsAndCoditionsRouter) {
        controller.router = router
    }
}

// MARK: - IBActions -

extension TermsAndConditionsView {
    @IBAction func closeButtonTap(sender: UIButton) {
        controller.close()
    }
}