//
//  main.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

fizzBuzz(for: 15)

print("linear: \(linearSearch(forSearchValue: 10, in: searchNumbers))")

print("binary: \(binarySearch(forSearchValue: 10, in: searchNumbers))")

print("mostCommon: \(mostCommonItemInArray(array: ["a", "b", "a"]))")

print("factorial: \(factorial(of: 3))")

print("recursive: \(recursiveFactorial(of: 3))")

print("reverse: \(reverseWordsInSentence(sentence: str))")

print("fib: \(fib(for: 1))")

print("fibRecursive: \([0, 1] + fibRecursive(for: 5, first: 0, second: 1))")

var rwBookStack = Stack<String>()
rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")
print(rwBookStack)
