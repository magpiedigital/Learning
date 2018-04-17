//
//  RecursiveFibonacci.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

func fibRecursive(for numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    return [first + second] + fibRecursive(for: numSteps - 1, first: second, second: (first + second))
}
