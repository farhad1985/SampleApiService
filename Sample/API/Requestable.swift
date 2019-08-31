//
//  Requestable.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

protocol Requestable {}

extension Requestable {
    func request<T: Codable>(route: String,
                             completion: @escaping (Result<T>) -> ()) {
        
        guard let url = URL(string: route) else {
            completion(Result.failure(error: .noValidURL))
            return
        }
        
        URLSession.shared
            .dataTask(with: url) { (data, response, err) in
                
                guard let validData = data else {
                    completion(Result.failure(error: .unknowError))
                    return
                }
                
                guard let json = try? JSONDecoder()
                    .decode(T.self, from: validData) else {
                        completion(Result.failure(error: .noValidData))
                        return
                }
                
                completion(Result.success(value: json))
        }
            .resume()
        
    }
}
