//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,3,4,5,6,7,8,9,10]

// Binary
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

binarySearch(forSearchValue: 10, in: numbers)

// Naive
func linearSearch(forSearchValue searchValue: Int, in array: [Int]) -> Bool {
    for number in array {
        if number == searchValue {
            return true
        }
    }
    return false
}

linearSearch(forSearchValue: 10, in: numbers)

// Cheating
func search(forSearchValue searchValue: Int, array: [Int]) -> Bool {
    return array.filter({ $0 == searchValue }).isEmpty ? false : true
}

search(forSearchValue: 11, array: numbers)

