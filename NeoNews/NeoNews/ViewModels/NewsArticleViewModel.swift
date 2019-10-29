//
//  NewsArticleViewModel.swift
//  NeoNews
//
//  Created by Denis Nefedov on 29.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit

struct NewsArticleViewModel {
    private(set) var article: Article
}

extension NewsArticleViewModel {
    init (_ article: Article) {
        self.article = article
    }
}

extension NewsArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String? {
        return self.article.description
    }
    
    func image(completion: @escaping (UIImage?) -> (Void)) {
        
        guard let imageURL = article.imageURL else {
            completion(nil)
            return
        }
        
        UIImage.imageForHeadline(url: imageURL) { image in
            DispatchQueue.main.async {
                completion(image)
            }
        }
        
    }
}
