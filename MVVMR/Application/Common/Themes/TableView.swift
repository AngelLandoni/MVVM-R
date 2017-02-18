//
//  TableView.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/14/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

enum TableViewTheme {
    case Normal
    case White
    
    var backgroundColor: UIColor {
        switch self {
        case .Normal:
            return ALColor.BackgroundBlack.getRGB()
        case .White:
            return ALColor.BaseWhite.getRGB()
        }
    }
    
    var textColor: UIColor {
        switch self {
        case .Normal:
            return UIColor.whiteColor()
        case .White:
            return ALColor.BaseBlack.getRGB()
        }
    }
    
    var separator: UIColor {
        switch self {
        case .Normal:
            return ALColor.BackgorundBlackLight.getRGB()
        case .White:
            return ALColor.BaseBlack.getRGB()
        }
    }
}