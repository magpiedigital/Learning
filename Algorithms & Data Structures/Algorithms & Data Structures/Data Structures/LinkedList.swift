//
//  Linked List.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-18.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

public class LLNode<T> {
    var value: T
    var next: LLNode<T>?
    weak var previous: LLNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    fileprivate var head: LLNode<T>?
    private var tail: LLNode<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: LLNode<T>? {
        return head
    }
    
    public var last: LLNode<T>? {
        return tail
    }
    
    public func append(value: T) {
        let newNode = LLNode<T>(value: value)

        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }

        tail = newNode
    }
    
    public func nodeAt(index: Int) -> LLNode<T>? {
        guard index >= 0 else { return nil }
        
        var node = head
        var i = index
        
        while node != nil {
            if i == 0 { return node }
            i -= 1
            node = node!.next
        }
        
        return node

    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: LLNode<T>) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var node = head
        var text = "["
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}
