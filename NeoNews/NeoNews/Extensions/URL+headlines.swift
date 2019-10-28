//
//  URL+headlines.swift
//  NeoNews
//
//  Created by Denis Nefedov on 28.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

fileprivate let key: String = "b421feee780e45bba20eaeba874ccdb2"
fileprivate let baseUrl: String = "https://newsapi.org/v2/top-headlines"

extension URL {
    static func getTopHeadlinesUrl(for category: String) -> URL {
        return URL(string: "\(baseUrl)?category=\(category)&apiKey=\(key)")!
    }
}
