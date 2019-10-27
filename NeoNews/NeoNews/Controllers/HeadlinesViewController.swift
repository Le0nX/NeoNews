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
    }
    
    private func setupUI() {
        // Enable large tittles
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
