//
//  Data.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-04.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import Foundation

class Data{
    static var provincesArray: [String] = []
    static var combinationDictionary: [String:Int] = [:]
    static func sort(){
        var sortedArray = provincesArray.sorted()
        print(sortedArray)
        var count = 0
        for i in 0...sortedArray.count-2{
            if sortedArray[i] == sortedArray[i+1]{
                count+=1
                combinationDictionary[sortedArray[i]] = count
            }else{
                count=0
            }
        }
        print(combinationDictionary)
    }
}
