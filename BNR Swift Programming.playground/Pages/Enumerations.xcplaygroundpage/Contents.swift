//: [Previous](@previous)

import Foundation

enum TextAlignment: Int {
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}

var alignment = TextAlignment.Justify

print("Left has a raw value \(TextAlignment.Left.rawValue)")
print("The alignment variable has a raw value \(alignment.rawValue)")

// Raw Value Enumerations
// Create a raw value
let myRawValue = 100

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // conversion succeeded
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

if alignment == .Right {
    print("we should right-align the text!")
}

// switch statements are typically used to handle enum values
// all switch statements must be exhaustive. aka having a default case, here we could include on but it's not necessary
switch alignment {
case .Left:
    print("left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}

// avoiding default clauses is recommended when switching on enum types since they are not "future proof"

enum ProgrammingLanguage: String {
    case Swift
    case ObjC = "ObjC"
    case C
    case Cpp = "C++"
    case Java
}

let myFavLanguage = ProgrammingLanguage.Swift
print("My fav programming language is \(myFavLanguage)")
print("My fav programming language is \(myFavLanguage.rawValue)")

// Methods: a function that is associated with a type
enum LightBulb {
    case On
    case Off
    
    func surfaceTempForAmbientTemp(ambient: Double) -> Double
    {
        switch self {
        case .On:
            return ambient + 150.0
            
        case .Off:
            return ambient
        }
    }
    
    mutating func toggle()
    {
        switch self {
        case .On:
            self = .Off
            
        case .Off:
            self = .On
        }
    }
}

var bulb = LightBulb.On
let ambientTemp = 77.0

var bulbTemp = bulb.surfaceTempForAmbientTemp(ambientTemp)
bulb.toggle()
bulbTemp = bulb.surfaceTempForAmbientTemp(ambientTemp)
print("the bulb's temp is \(bulbTemp)")

// Associated Values
enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    
    func area() -> Double
    {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
            
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
    
    func perimeter() -> Double
    {
        switch self {
        case let .Square(side):
            return side * 4
            
        case let .Rectangle(width: w, height: h):
            return w * 2 + h * 2
            
        case .Point:
            return 0
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectangleShape = ShapeDimensions.Rectangle(width: 10.0, height: 5.0)
var pointShape = ShapeDimensions.Point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectangleShape.area())")
print("point's area = \(pointShape.area())")

print("rectangle's perimeter = \(rectangleShape.perimeter())")
print("square's perimeter = \(squareShape.perimeter())")

enum FamilyTree {
    case NoKnownParents
    indirect case OneKnownParent(name: String, ancestors: FamilyTree)
    indirect case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.TwoKnownParents(fatherName: "Fred Sr", fatherAncestors: .OneKnownParent(name: "Beth", ancestors: .NoKnownParents), motherName: "Marsha", motherAncestors: .NoKnownParents)