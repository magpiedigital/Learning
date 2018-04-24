//
//  Stack.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    func peek() -> Element? {
        return array.last
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------"
        
        let stackElements = array.map({ "\($0)" }).reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}
