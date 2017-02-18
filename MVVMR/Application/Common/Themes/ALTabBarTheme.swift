//
//  ALTabBarTheme.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

enum ALTabBarTheme {
    case Normal
    case White
    
    var barTintColor: UIColor {
        switch self {
        case .Normal:
            return ALColor.BaseBlack.getRGB()
        case .White:
            return ALColor.BaseWhite.getRGB()
        }
    }
}