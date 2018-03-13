//: Playground - noun: a place where people can play

import UIKit

// MIXING REFERENCE AND VALUE TYPES

//Reference Types Containing Value Type Properties
struct Address {
    var streetAddress: String
    var city: String
    var state: String
    var postalCode: String
}

class Person {          // Reference type
    var name: String      // Value type
    var address: Address  // Value type
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}

let kingsLanding = Address(streetAddress: "1 King Way", city: "Kings Landing", state: "Westeros", postalCode: "12345")
let madKing = Person(name: "Aerys", address: kingsLanding)
let kingSlayer = Person(name: "Jaime", address: kingsLanding)
kingSlayer.address.streetAddress = "1 King Way Apt. 1"
madKing.address.streetAddress  // 1 King Way
kingSlayer.address.streetAddress // 1 King Way Apt. 1

//Value Types Containing Reference Type Properties

struct Bill {
    let amount: Float
    private var _billedTo: Person
    
    private var billedToForRead: Person {
        return _billedTo
    }
    
    private var billedToForWrite: Person {
        mutating get {
            if !isKnownUniquelyReferenced(&_billedTo) {
                print("Making a copy of _billedTo")
                _billedTo = Person(name: _billedTo.name, address: _billedTo.address)
            } else {
                print("Not making a copy of _billedTo")
            }
            return _billedTo
        }
    }
    
    init(amount: Float, billedTo: Person) {
        self.amount = amount
        _billedTo = Person(name: billedTo.name, address: billedTo.address)
    }
    
    mutating func updateBilledToAddress(address: Address) {
        billedToForWrite.address = address
    }
    
    mutating func updateBilledToName(name: String) {
        billedToForWrite.name = name
    }
    
    // ... Methods to read billedToForRead data
}

let billPayer = Person(name: "Robert", address: kingsLanding)

let bill = Bill(amount: 42.99, billedTo: billPayer)
billPayer.name = "Bob"
let bill2 = bill

var myBill = Bill(amount: 99.99, billedTo: billPayer)
myBill.updateBilledToName(name: "Eric")
var billCopy = myBill

