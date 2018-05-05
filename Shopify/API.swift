//
//  API.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-03.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import Foundation
import Alamofire

class API{

    static func makeRequest(){
        Alamofire.request("https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6", method: .get, parameters: ["":""], encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
        
            switch(response.result) {
            case .success(_):
                if let result = response.result.value{
                    let JSON = result as! NSDictionary
                    let parser = Parser()
                    parser.parseProvinces(with: JSON)
                    parser.parseYears(with: JSON)
                }
                break
            case .failure(_):
                print(response.result.error!)
                break
            }
        }
    }
}
