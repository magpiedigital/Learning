//: Playground - noun: a place where people can play

import UIKit

var numbers = [Int]()
for i in 1...1000 {
    numbers.append(i)
}

for num in numbers {
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
