//
//  TermsAndConditionsRouter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation
import UIKit

// try to change the class with a struct
final class TermsAndCoditionsRouter {
    private weak var view : TermsAndConditionsView? = nil
    
    // MARK: Internal methods
    
    func getMainView() -> TermsAndConditionsView {
        guard let strongView = view else {
            let strongView: TermsAndConditionsView = TermsAndConditionsView(nibName: "TermsAndConditionsView", bundle: nil)
            strongView.setRouter(self)
            view = strongView
            return strongView
        }
        return strongView
    }
    
    func close() {
        guard let strongView = view else { return }
        strongView.dismissViewControllerAnimated(true, completion: nil)
    }
}