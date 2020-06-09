//
//  OrdersTableViewController.swift
//  CoffeeHouse
//
//  Created by leandro de araujo estrada on 03/06/20.
//  Copyright © 2020 leandro de araujo estrada. All rights reserved.
//

import Foundation
import UIKit


class OrdersTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    private func populateOrders(){
        
        guard let coffeeOrdersURL = URL(string: "https://guarded-retreat-82533.herokuapp.com/orders") else {
            fatalError("URL was incorrect")
            //return
        }
        
        let resource = Resource<[Order]>(url: coffeeOrdersURL)
        
        WebService().load(resource: resource) { result in
            
            switch result {
            case.success(let orders):
                print(orders)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
}
