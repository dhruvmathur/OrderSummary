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
        Data.sort()
    }
    
    func parseYears(with data: NSDictionary){
        let orders = data["orders"] as! [[String:Any]]
        for i in 0...49{
            let firstOrder = [orders[i]]
            let firstRealOrder = firstOrder[0]
            let processDate:String = firstRealOrder["processed_at"]! as! String
            if processDate.contains("2017"){
                Data.years+=1
            }
        }
    }
    
    func parseOrderNumPrice(with data: NSDictionary){
        let orders = data["orders"] as! [[String:Any]]
        for i in 0...9{
            let firstOrder = [orders[i]]
            let firstRealOrder = firstOrder[0]
            let orderNumber = firstRealOrder["order_number"]
            let totalPrice = firstRealOrder["total_price"]
            let processDate:String = firstRealOrder["processed_at"]! as! String
            if processDate.contains("2016"){
                Data.orderNumArray[orderNumber as! Int] = totalPrice
                print(Data.orderNumArray)
            }
        }
        print(Data.orderNumArray)
        Data.sortOrderNumPrice()
    }
}
