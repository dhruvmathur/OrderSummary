//
//  Parser.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-03.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import Foundation

class Parser{
    func parseProvinces(with data: NSDictionary){
        let orders = data["orders"] as! [[String:Any]]
        for i in 0...49{
            let firstOrder = [orders[i]]
            let firstRealOrder = firstOrder[0]
            if let shippingAddress: [String: Any] = firstRealOrder["shipping_address"] as? [String : Any]{
                let prov = shippingAddress["province"]
                Data.provincesArray.append(prov as! String)
                print(prov!)
            }else{
                continue
            }
            
        }
    }
}
