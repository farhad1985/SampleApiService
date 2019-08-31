//
//  ViewController.swift
//  Sample
//
//  Created by Farhad Faramarzi on 8/31/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fetchUsers()
        fetchProducts()
    }
    
    private func fetchUsers() {
        
        let route = Route.users.value + "?page=1"
        
        APIService<BaseResponse<[User]>>()
            .request(url: route) { (result) in
                print("------Users------)")
                
                switch result {
                case .success(let value):
                    print(value)
                    
                case .failure(let error):
                    print(error)
                }
                
                print("------End------)")
                
        }
    }
    
    private func fetchProducts() {
        
        let route = Route.products.value + "/2"
        
        APIService<BaseResponse<Product>>()
            .request(url: route) { (result) in
                print("------Products------)")
                
                switch result {
                case .success(let value):
                    print(value)
                    
                case .failure(let error):
                    print(error)
                }
                
                print("------End------)")
                
        }
    }
}

