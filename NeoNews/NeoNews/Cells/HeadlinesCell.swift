//
//  HeadlinesCell.swift
//  NeoNews
//
//  Created by Denis Nefedov on 27.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit

class HeadlinesCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var headlinesImageView: UIImageView!
    
}


extension HeadlinesCell {
    
    func configure(vm: NewsArticleViewModel) {
        titleLabel.text = vm.title
        descriptionLabel.text = vm.description
        vm.image { [weak self] image in
            self?.headlinesImageView.image = image
        }
    }
    
}
