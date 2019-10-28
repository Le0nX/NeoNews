//
//  NewsServer.swift
//  NeoNews
//
//  Implementation was taken from here:
//  https://talk.objc.io/episodes/S01E1-tiny-networking-library
//
//  Created by Denis Nefedov on 27.10.2019.
//  Copyright © 2019 X. All rights reserved.
//

import Foundation

//MARK: - Resource
/**
    Структура запрашиваемых данных вместе с обработчиком
        Воозвращает нам уже обработанные данные или nil
 */
struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

//MARK: - WebService
final class WebService {
// using final for dispatch optimization
    // метод асинхронной загрузки и обработки уже готовых данных из ресурса
    func load<T>(_ resource: Resource<T>, completion: @escaping (T?) -> (Void)) {
        URLSession.shared.dataTask(with: resource.url, completionHandler: { data, response, error in
            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
            
        }).resume()
    }
}
