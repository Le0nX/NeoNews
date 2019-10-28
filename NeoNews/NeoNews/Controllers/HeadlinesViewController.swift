//
//  HeadlinesViewController.swift
//  NeoNews
//
//  Created by Denis Nefedov on 27.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit


class HeadlinesVewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        getHeadlinesAndArticles()
    }
    
    private func setupUI() {
        // Enable large tittles
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func getHeadlinesAndArticles() {
        NewsCategoryService().getAllHeadlinesForCategories { categories in
            print(categories)
        }
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    //деселектим при нажатии
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as? HeadlinesCell else {
//            fatalError("no news cell")
//        }
//        return cell
//    }
}
