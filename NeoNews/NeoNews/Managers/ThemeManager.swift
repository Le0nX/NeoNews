//
//  ThemeManager.swift
//  NeoNews
//
//  File for Theme settings and color management
//  Created by Denis Nefedov on 24.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit


class ThemeManager {
    // Some hack is needed in ios 13
    // to make navigationBar color grey in largeTittle mode
    static func setup() {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            navBarAppearance.backgroundColor = UIColor.RGB(47,54,64)
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        } else {
            UINavigationBar.appearance().barTintColor = UIColor.RGB(47,54,64)
        }
    }
}
