//
//  main.swift
//  Types and Operations
//
//  Created by Hamish Johnson on 2018-03-09.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

// When converting doubles to Int, it doesn't round up
let double = 12.8
let integer = Int(double)

print("Innacurate double conversion: \(integer)")

// Type 'Character' Exists
let characterA: Character = "a"

// Tuples
let coordinates: (Int, Double) = (2, 3.5)
print("coordinates.0: \(coordinates.0), coordinates.1 \(coordinates.1)")

let coordinatesNamed: (x: Int, y: Double) = (2, 3.2)
print("coordinatesNamed.x: \(coordinatesNamed.x), coordinatesNamed.y: \(coordinatesNamed.y)")

//Assigning multiple values from tuple at the same time
let coordinates3D = (x: 2, y: 3, z: 1)
let (x, y, z) = coordinates3D
print("Assigning multiple values: \(x, y, z)")

let (x2D, _, z2D) = coordinates3D
print("Ignoring a value: \(x2D, z2D)")

// Tuple Mini Challenge
var date: (d: Int, m: Int, y: Int, t: Double) = (4, 3, 1992, 8.0)
let (day, _, _, temp) = date
date.t = 8.8
let (_, _, _, newTemp) = date
print("4th March Temp: \(newTemp)")

//Number types
let a: Int16 = 12
let b: UInt8 = 255 //Unsigned - No negative values
let c: Int32 = -100000


