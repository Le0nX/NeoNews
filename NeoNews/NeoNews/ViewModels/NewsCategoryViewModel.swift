//
//  NewsCategoryViewModel.swift
//  NeoNews
//
//  Created by Denis Nefedov on 29.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation


struct NewsCategoryViewModel {
    
    let name: String
    let articles: [Article]

}

extension NewsCategoryViewModel {
    
    func articleAtIndex(_ index: Int) -> NewsArticleViewModel {
        //let article = self.articles[index]
        return NewsArticleViewModel(articles[index])
    }
}
