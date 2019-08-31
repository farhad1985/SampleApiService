//
//  BaseResponse.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

struct BaseResponse<T: Codable>: Codable {
    var page: Int
    var total: Int
    var data: T?
}
