//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum CSSColor {
    enum ColorName: String {
        case black, silver, gray, white, maroon, red, purple, fuchsia, green, lime, olive, yellow, navy, blue, teal, aqua
    }
    
    case named(ColorName)
    case rgb(UInt8, UInt8, UInt8)
}

extension CSSColor: CustomStringConvertible {
    var description: String {
        switch self {
        case .named(let colorName):
            return colorName.rawValue
        case .rgb(let red, let green, let blue):
            return String(format: "#%02X%02X%02X", red,green,blue)
        }
    }
}

let color1 = CSSColor.named(.red)
let color2 = CSSColor.rgb(0xAA, 0xAA, 0xAA)
print("color1 = \(color1), color2 = \(color2)") // prints color1 = red, color2 = #AAAAAA

extension CSSColor {
    init(gray: UInt8) {
        self = .rgb(gray, gray, gray)
    }
}

let color3 = CSSColor(gray: 0xaa)
print(color3)  //  prints #AAAAAA

CSSColor.named(.blue)

enum Math {
    static let phi = 1.6180339887498948482 // golden mean
}

protocol Drawable {
    func draw(with context: DrawingContext)
}

protocol DrawingContext {
    func draw(circle: Circle)
    // more primitives will go here ...
}

struct Circle : Drawable {
    var strokeWidth = 5
    var strokeColor = CSSColor.named(.red)
    var fillColor = CSSColor.named(.yellow)
    var center = (x: 80.0, y: 160.0)
    var radius = 60.0
    
    // Adopting the Drawable protocol.
    func draw(with context: DrawingContext) {
        context.draw(circle: self)
    }
    
}
