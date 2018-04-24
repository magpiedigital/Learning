//
//  Most Commons.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

func mostCommonItemInArray(array: [String]) -> String {
    var dict = [String: Int]()
    for item in array {
        dict[item] = dict[item] == nil ? 1 : dict[item]! + 1
    }
    return dict.sorted(by: { $0.1 > $1.1 }).first!.0
}
