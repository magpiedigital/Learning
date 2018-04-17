//
//  Linear Search.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

// Linear Search
let searchNumbers = [1,2,3,4,5,6,7,8,9,10]

func linearSearch(forSearchValue searchValue: Int, in array: [Int]) -> Bool {
    for number in array {
        if number == searchValue {
            return true
        }
    }
    return false
}
