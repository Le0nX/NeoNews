//
//  CategoryListViewModel.swift
//  NeoNews
//
//  Created by Denis Nefedov on 29.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit

struct NewsCategoryListViewModel {
    private(set) var categories: [NewsCategory]
}

//расширяем модель для взаимодействия с протоколами  tableView
extension NewsCategoryListViewModel {
    
    // кол-во секций(категорий)
    var numberOfSections: Int {
        return self.categories.count
    }
    
    // количество артиклов в секции(категории)
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.categories[section].articles.count
    }
    
    func heightForHeaderInSection(_ section: Int) -> CGFloat {
        return 60.0
    }
}

extension NewsCategoryListViewModel {
    
    func categoryAtIndex(index: Int) -> NewsCategoryViewModel {
        return NewsCategoryViewModel(name: categories[index].title, articles: categories[index].articles)
    }
    
    func articleForSectionAtIndex(section: Int, index: Int) -> NewsArticleViewModel {
        return categoryAtIndex(index: section).articleAtindex(index)
    }
    
}
