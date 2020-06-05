//
//  WebService.swift
//  CoffeeHouse
//
//  Created by leandro de araujo estrada on 05/06/20.
//  Copyright © 2020 leandro de araujo estrada. All rights reserved.
//

import Foundation


enum NetworkError: Error{
    case decodingError
    case domainError
    case urlError
}

struct Resource<T: Codable>{
    let url: URL
}

class WebService{
    
    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, NetworkError>) -> Void){
        URLSession.shared.dataTask(with: resource.url) { (data, response, error) in
            <#code#>
        }
    }
    
}
