//: [Previous](@previous)

import Foundation

var population: Int = 100000
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else {
    if population >= 10000 && population < 50000 {
        message = "\(population) is a medium town!"
    } else {
        message = "\(population) is pretty big!"
    }
}

// refactored using else if
if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population > 50000 {
    message = "\(population) is a very big town!"
}

print(message)

if !hasPostOffice {
    print("Where do we buy stamps?!")
}

// using a ternary operator
message = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"