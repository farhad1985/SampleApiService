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
        let service = APIService<BaseResponse<[User]>>()
        
        let route = Route.users.value + "?page=1"
        
        service.request(url: route) { (result) in
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

        let service = APIService<BaseResponse<Product>>()
        
        let route = Route.products.value + "/2"
        
        service.request(url: route) { (result) in
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

