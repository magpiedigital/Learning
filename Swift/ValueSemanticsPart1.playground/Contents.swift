//: Playground - noun: a place where people can play

import UIKit

// REFERENCE TYPES
class Dog {
    var wasFed = false
}
let dog = Dog()
let puppy = dog
puppy.wasFed = true

dog.wasFed
puppy.wasFed




// VALUE TYPES
struct Cat {
    var wasFed = false
}
var cat = Cat()
var kitty = cat
kitty.wasFed = true

cat.wasFed
kitty.wasFed




//SPEED

/* Although it’s much faster to assign a reference to a variable, copies are almost as cheap. Copy operations run in constant O(n) time since they use a fixed number of reference-counting operations based on the size of the data.
 */




// MUTABILITY

/* For reference types, the definition refers to the reference of the instance, and for value types, it refers to the copy of the instance. So you can mutate an instance defined by a constant 'let = Dog()' because the reference is what is defined, not the Instance. For a value type, you cannot mutate an instance defined by a constant 'let = Cat()'
 */




// WHEN TO USE A VALUE TYPE

// When comparing instance data with == makes sense
struct Point: CustomStringConvertible {
    var x: Float
    var y: Float
    
    var description: String {
        return "{x: \(x), y: \(y)}"
    }
}
let point1 = Point(x: 2, y: 3)
let point2 = Point(x: 2, y: 3) // These should be considered equal
extension Point: Equatable { } // So conform to equatable (Good practice for all value types)
func ==(lhs: Point, rhs: Point) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}
point1 == point2 // Error before implementing extension, true after

// When copies should have independent state
struct Shape {
    var center: Point
}
let initialPoint = Point(x: 0, y: 0)
let circle = Shape(center: initialPoint)
var square = Shape(center: initialPoint)
square.center.x = 5   // {x: 5.0, y: 0.0}
circle.center         // {x: 0.0, y: 0.0} - If Point() was a class, circle's center would change too

// When the data will be used in code across multiple threads




// WHEN TO USE A REFERENCE TYPE

// When comparing instance identity with === makes sense

/* To put this in real-world terms, consider the following: if your cubicle-mate swaps one of your $20 bills with another legitimate $20 bill, you don’t really care, as you’re only concerned about the value of the object.
 
 However, if someone stole the Magna Carta and created an identical parchment copy of the document in its place, that would matter greatly because the inherent identity of the document is not the same at all.
 */

// You want to create a shared, mutable state
class Account {
    var balance = 0.0
}
class Person {
    let account: Account
    init(_ account: Account) {
        self.account = account
    }
}
let account = Account()
let person1 = Person(account)
let person2 = Person(account)
person2.account.balance += 100.0
person1.account.balance    // 100
person2.account.balance    // 100

// IF IN DOUBT, USE A STRUCT FOR ITS SAFETY PROPERTIES
