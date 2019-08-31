//
//  User.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: Int
    var email: String
    var first_name: String
    var last_name: String
    var avatar: String
}
