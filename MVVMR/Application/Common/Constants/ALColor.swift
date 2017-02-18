//
//  ALColor.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/8/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import Foundation
import UIKit

enum ALColor : Int {
    case BaseBlack = 0x2D2D2D
    case BaseBlackLight = 0x424242
    case BaseWhite = 0xFFFFFF
    
    case BackgroundBlack = 0x191919
    case BackgorundBlackLight = 0x292929
    
    func getRGB() -> UIColor {
        let red: CGFloat = CGFloat((self.rawValue >> 16) & 0xFF) / 255
        let green: CGFloat = CGFloat((self.rawValue >> 8) & 0xFF) / 255
        let blue: CGFloat = CGFloat(self.rawValue & 0xFF) / 255
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}