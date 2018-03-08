//: Playground - noun: a place where people can play

/* Going through guide and picking out new things for practice
 Guide: https://www.raywenderlich.com/143771/swift-tutorial-part-1-expressions-variables-constants
 */


import UIKit

/* Making a
 multi line
 comment
 */

//Decimal Numbers
22 / 7
22.0 / 7.0

//Modulo - gives back the remainder
28 % 10
24 % 5
6 % 3

//Shift
/* Shifting x << y is equivalent to (x * 2^y)
 Shifting x >> y is equivalent to (x/2^y)
 */
1 << 2
32 >> 2
24 >> 2

//Math functions
sin(45 + Double.pi / 180)
cos(135 * Double.pi / 180)
sqrt(2)
max(1, 5, 10)
min(1, 5, 10)

// Types
// Double has double precision than float
Float.pi
Double.pi

//Mini-exercises

let ages: [Int] = [26, 30, 21, 24, 26, 21, 23, 21]
var averageAge: Double = ages.reduce(0){ Double($0) + Double($1) } / Double(ages.count)
averageAge

let testNumber = 234
let evenOdd = testNumber % 2

var answer = 0
answer += 10
answer *= 10
answer += 20
answer >> 3

//Challenges
let exercises = 11
var exercisesCompleted = 0

exercisesCompleted += 1

var age = 16
print(age)
age = 32
print(age)

exercisesCompleted += 1

let a: Int = 46
let b: Int = 10
// 4610
let answer1: Int = (a * 100) + b
// 5600
let answer2: Int = (a * 100) + (b * 100)
// 4601
let answer3: Int = (a * 100) + (b / 10)

exercisesCompleted += 1

(5 * 3) - ((4 / 2) * 2)

exercisesCompleted += 1

let p: Double = 14.5
let q: Double = 13.947
let pqAverage = (p + q)/2

exercisesCompleted += 1

let fahrenheit: Double = 102.8
let celsius = (fahrenheit - 32)/1.8

exercisesCompleted += 1

let position: Int = 7
let column = position % 8
let row = position / 8

exercisesCompleted += 1

let dividend: Double = 49
let divisor: Double = 24
let quotient = dividend / divisor
let remainder: Int = Int(dividend) - Int(divisor) * Int(quotient)

exercisesCompleted += 1

let degrees: Double = 450
let radians = degrees/180

exercisesCompleted += 1

let x1: Double = 1
let y1: Double = 1
let x2: Double = 2
let y2: Double = 2
let xDist = x2 - x1
let yDist = y2 - y1
let xyDist = sqrt(pow(xDist, 2) + pow(yDist, 2))

exercisesCompleted += 1

print(exercises/exercisesCompleted)

