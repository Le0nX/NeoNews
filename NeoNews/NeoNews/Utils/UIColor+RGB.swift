//
//  UIColor+RGB.swift
//  NeoNews
//
//  Created by Denis Nefedov on 27.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit

//MARK: - RGB
/**
    - Descriptioin:
        RGB color settings
 */
extension UIColor {
    static func RGB (_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
 
