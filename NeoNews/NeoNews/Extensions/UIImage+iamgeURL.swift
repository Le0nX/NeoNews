//
//  UIImage+iamgeURL.swift
//  NeoNews
//
//  Created by Denis Nefedov on 29.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImage {
    
    // заглушка для того случая, если мы не смогли подгрузить
    // image для новости
    static func imageMock() -> UIImage {
        return UIImage(named: "mockImage")!
    }
    
    static func imageForHeadline(url: String, completion: @escaping (UIImage) -> (Void)) {
        
        guard let imageURL = URL(string: url) else {
            completion(UIImage.imageMock()) // если не подгрузили, то подставляем мок
            return
        }
        
        if let image = imageCache.object(forKey: url as AnyObject) as? UIImage {
            completion(image)
            return
        }
        
        //если с url все ок, то докачиваем image
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: imageURL) {
                if let downloadedImage = UIImage(data: data) {
                    imageCache.setObject(downloadedImage, forKey: url as AnyObject) // кэшируем картинку
                    completion(downloadedImage) //TODO: возможно, тут нужен main.async для UI
                }
            }
        }
        
        
    }
}
