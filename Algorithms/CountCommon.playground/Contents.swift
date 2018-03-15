//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func mostCommonItemInArray(array: [String]) -> String {
    var dict = [String: Int]()
    for item in array {
        dict[item] = dict[item] == nil ? 1 : dict[item]! + 1
    }
    return dict.sorted(by: { $0.1 > $1.1 }).first!.0
}

print(mostCommonItemInArray(array: ["a", "b", "a"]))
