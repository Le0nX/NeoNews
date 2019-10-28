//
//  NewsCategoryService.swift
//  NeoNews
//
//  Created by Denis Nefedov on 28.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

class NewsCategoryService {
    // получаем все категрии и передаем их массив в обработчик, чтобы
    // получить все headlines 
    func getAllHeadlinesForCategories(complition: @escaping ([NewsCategory]) -> (Void)) {
        var categories = [NewsCategory]()
        var requestCount = 0
        let categoriesCount = NewsCategory.all().count
        
        NewsCategory.all().forEach { category in
            
            WebService().load(Article.by(category)) { articles in
                
                requestCount += 1 // увеличиваем счетчик запросов
                guard let articles = articles else {
                    return
                }
                
                let category = NewsCategory(title: category, articles: articles)
                categories.append(category)
                
                if requestCount == categoriesCount {
                    DispatchQueue.main.async {
                        complition(categories)
                    }
                }
            }
            
        }
    }
}
