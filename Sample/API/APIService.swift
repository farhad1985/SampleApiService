//
//  UserService.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

class APIService<T: Codable>: Requestable {
    
    func request(url: String, completion: @escaping (Result<BaseResponse<T>>) -> ()) {
        request(route: url, completion: completion)
    }
}
