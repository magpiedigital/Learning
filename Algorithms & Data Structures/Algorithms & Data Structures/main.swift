//
//  main.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

// MARK: - Fizz Buzz

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
fizzBuzz(for: 15)

// MARK: - Search
// Linear Search
let searchNumbers = [1,2,3,4,5,6,7,8,9,10]

func linearSearch(forSearchValue searchValue: Int, in array: [Int]) -> Bool {
    for number in array {
        if number == searchValue {
            return true
        }
    }
    return false
}
print("linear: \(linearSearch(forSearchValue: 10, in: searchNumbers))")

// Binary Search
func binarySearch(forSearchValue searchValue: Int, in array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return false
}
print("binary: \(binarySearch(forSearchValue: 10, in: searchNumbers))")

// MARK: - Most Common In Array
func mostCommonItemInArray(array: [String]) -> String {
    var dict = [String: Int]()
    for item in array {
        dict[item] = dict[item] == nil ? 1 : dict[item]! + 1
    }
    return dict.sorted(by: { $0.1 > $1.1 }).first!.0
}
print("mostCommon: \(mostCommonItemInArray(array: ["a", "b", "a"]))")


// MARK: - Factorial
func factorial(of value: UInt) -> UInt {
    guard value != 0 else { return 1 }
    
    var num: UInt = 1
    for i in 1...value {
        num *= i
    }
    return num
}
print("factorial: \(factorial(of: 3))")

func recursiveFactorial(of value: UInt) -> UInt {
    guard value != 0 else { return 1 }
    return value * recursiveFactorial(of: value - 1)
}
print("recursive: \(recursiveFactorial(of: 3))")

// MARK: - Reverse words
var str = "Let's start to today by completing an interesting challenge"

func reverseWordsInSentence(sentence: String) -> String {
    var newSentence = ""
    let array = sentence.removeVowels().components(separatedBy: " ")
    for (index, word) in array.enumerated() {
        if index % 2 == 1 {
            newSentence += String(array[index].reversed()) + " "
        } else {
            newSentence += word + " "
        }
    }
    return newSentence
}

extension String {
    func removeVowels() -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        var newString = self
        for vowel in vowels {
            newString = newString.replacingOccurrences(of: vowel, with: "")
        }
        return newString
    }
}

print("reverse: \(reverseWordsInSentence(sentence: str))")

// MARK: - Fibonacci
func fib(for numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    guard numSteps > 1 else { return [sequence.remove(at: 1)] }
    guard numSteps > 2 else { return sequence }
    for i in 3...numSteps {
        sequence.append(sequence[i-2] + sequence[i-3])
    }
    return sequence
}
print("fib: \(fib(for: 1))")

func fibRecursive(for numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    return [first + second] + fibRecursive(for: numSteps - 1, first: second, second: (first + second))
}

print("fibRecursive: \([0, 1] + fibRecursive(for: 5, first: 0, second: 1))")
