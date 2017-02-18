//
//  ALViewController.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/6/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

class ALView: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configureObject()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureObject()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
}

// MARK: - Virtual methods -

extension ALView {
    
    // Override me!
    func configureObject() { }
}
