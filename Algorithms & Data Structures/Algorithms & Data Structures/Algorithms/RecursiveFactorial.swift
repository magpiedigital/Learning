//
//  RecursiveFactorial.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

func recursiveFactorial(of value: UInt) -> UInt {
    guard value != 0 else { return 1 }
    return value * recursiveFactorial(of: value - 1)
}
