//
//  NewsCategory.swift
//  NeoNews
//
//  Created by Denis Nefedov on 27.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation


struct NewsCategory {
    let title: String
    let articles: [Article]
    
    static func all() -> [String] {
        return ["General", "Sports", "Business", "Entertaiment"]
    }
}


