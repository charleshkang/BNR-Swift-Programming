//: [Previous](@previous)

import Foundation

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator
    }
    return divide()
}
areaOfTriangle(withBase: 3.0, andHeight: 5.0)

func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}
sortEvenOdd([6,2,4,2,3,12,432,231,21,61,8,9])

func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(("Matt", "Hello", "Kang"))
if let theName = middleName {
    print(theName)
}

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("hey there!")
        return
    }
    print("hey \(middleName)!")
}
greetByMiddleName(("matt", "danger", "matias"))