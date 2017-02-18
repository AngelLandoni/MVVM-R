//
//  TermsAndConditionsController.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation

final class TermsAndConditionsController {
    var router: TermsAndCoditionsRouter? = nil
}

extension TermsAndConditionsController {
    func close() {
        guard let strongRouter = router else { return }
        strongRouter.close()
    }
}