//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func factorial(of value: UInt) -> UInt {
    guard value != 0 else { return 1 }
    
    var num: UInt = 1
    for i in 1...value {
        num *= i
    }
    return num
}

print(factorial(of: 3))
print(factorial(of: 0))


func recursiveFactorial(of value: UInt) -> UInt {
    guard value != 0 else { return 1 }
    return value * recursiveFactorial(of: value - 1)
}

print(recursiveFactorial(of: 3))
