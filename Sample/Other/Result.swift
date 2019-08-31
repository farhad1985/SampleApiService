//
//  Result.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(value: T)
    case failure(error: SampleError)
}
