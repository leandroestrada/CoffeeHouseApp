//
//  Order.swift
//  CoffeeHouse
//
//  Created by leandro de araujo estrada on 06/06/20.
//  Copyright © 2020 leandro de araujo estrada. All rights reserved.
//

import Foundation

enum CoffeType: String, Codable{
    case cappucino
    case latte
    case espresso
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
    let type: CoffeType
    let size: CoffeeSize
}
