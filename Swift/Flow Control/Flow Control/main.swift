//
//  main.swift
//  Flow Control
//
//  Created by Hamish Johnson on 2018-03-09.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

print("Hello, World!")

// Equality operator outside of if statement
let doesOneEqualTwo = (1 == 2)
print("doesOneEqualTwo: \(doesOneEqualTwo)")
let isOneNotLessThanTwo = !(1 < 2)
print("isOneNotLessThanTwo: \(isOneNotLessThanTwo)")

let withParentheses =  (1 < 2 && 3 > 4) || 1 < 4
let withoutParentheses = 1 < 2 && 3 > 4 || 1 < 4

print("Testing parentheses: \(withParentheses, withoutParentheses)")

// Logical operators on strings
let order = "cat" < "dog"
print("Is Cat before Dog? \(order)")

// Combining characters
let stringA = "café"
let stringB = "cafe\u{0301}"
let equal = stringA == stringB
print("\(stringA, stringB) equal? \(equal)")

// Short circuiting
let name = "Marty"
if 1 > 2 && name == "Matt Galloway" {
    // since 1 > 2 is false, the statement can never be true, so swift doesn't even bother checking name
}

// Repeat while loops
// Checks condition after the loop instead of before
var sum = 1
repeat {
    sum = sum + (sum + 1)
} while sum < 1000
print(sum)

// Range
let closedRange = 0...5
let halfOpenRange = 0..<5

// where can be used on a for loop
let count = 10
var sum2 = 0
for i in 1...count where i % 2 == 1 {
    sum2 += i
}

// Labeled statements allows you to be specific about break/continue
var sum3 = 0
rowLoop: for row in 0..<8 {
    columnLoop: for column in 0..<8 {
        if row == column {
            continue rowLoop
        }
        sum3 += row * column
    }
}
