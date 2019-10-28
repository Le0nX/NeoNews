//
//  NewsArticle.swift
//  NeoNews
//
//  Created by Denis Nefedov on 27.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

// родительский элемент JSON'a
struct NewsSource: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    
    let title: String
    let description: String?
    let url: String?
    let imageURL: String?
    
    // создаем данный энам, т.к. imageURL не совпадает с
    // JSON'ом newsapi.org
    private enum CodingKeys: String, CodingKey {
        case title
        case description
        case url
        case imageURL = "urlToImage"
    }
}


extension Article {
    // получаем ресурс с набором Articles исходя из категории
    static func by(_ category: String) -> Resource<[Article]> {
        return Resource<[Article]>(url: URL.getTopHeadlinesUrl(for: category)) { data in
            
            return try! JSONDecoder().decode(NewsSource.self, from: data).articles
            
        }
    }
}
