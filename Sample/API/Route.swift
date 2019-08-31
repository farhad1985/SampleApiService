//
//  Route.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

let baseURL = "https://reqres.in"

enum Route: String {
    
    case users = "/api/users"
    case products = "/api/unknown"

    var value: String {
        return baseURL + self.rawValue
    }
}

