//
//  Order.swift
//  CoffeeHouse
//
//  Created by leandro de araujo estrada on 06/06/20.
//  Copyright © 2020 leandro de araujo estrada. All rights reserved.
//

import Foundation

enum CoffeeType: String, Codable{
    
    case cappuccino
    case latte
    case Espresso
    case cortado
    
}

enum CoffeeSize: String, Codable{
    
    case small
    case medium
    case large

}

struct Order: Codable{
    
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
    
}



