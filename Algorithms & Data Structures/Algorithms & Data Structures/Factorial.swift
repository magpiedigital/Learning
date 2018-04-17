//
//  Factorial.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

func factorial(of value: UInt) -> UInt {
    guard value != 0 else { return 1 }
    
    var num: UInt = 1
    for i in 1...value {
        num *= i
    }
    return num
}
