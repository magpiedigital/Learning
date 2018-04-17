//
//  Fizz Buzz.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

func fizzBuzz(for numSteps: Int) {
    for num in 1...numSteps {
        if num % 15 == 0 {
            print("\(num) fizz buzz")
        } else if num % 3 == 0 {
            print("\(num) fizz")
        } else if num % 5 == 0 {
            print("\(num) buzz")
        } else {
            print("\(num)")
        }
    }
}
