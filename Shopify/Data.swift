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
    static var years: Int = 0
    static var combinationDictionary: [String:Int] = [:]
    static var keyDict: [String] = []
    static var valueDict: [Int] = []
    
    static func sort(){
        var sortedArray = provincesArray.sorted()
        print(sortedArray)
        var count = 1
        for i in 0...sortedArray.count-2{
            if sortedArray[i] == sortedArray[i+1]{
                count+=1
                combinationDictionary[sortedArray[i]] = count
            }else{
                count=1
            }
        }
        print(combinationDictionary)
        keyDict = Array(combinationDictionary.keys)
        valueDict = Array(combinationDictionary.values)
    }
    
}
