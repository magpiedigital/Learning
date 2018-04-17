//
//  Fibonacci.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

func fib(for numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    guard numSteps > 1 else { return [sequence.remove(at: 1)] }
    guard numSteps > 2 else { return sequence }
    for i in 3...numSteps {
        sequence.append(sequence[i-2] + sequence[i-3])
    }
    return sequence
}
