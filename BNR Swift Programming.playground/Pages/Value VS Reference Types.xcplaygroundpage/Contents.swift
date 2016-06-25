//: [Previous](@previous)

import Foundation

// try and structure data using a struct first, then move onto a class if needed


class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

struct Pantheon {
    let chiefGod: GreekGod
    let dateCreated = NSDate()
}
let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
zeus.name = "Zeus Jr"
zeus.name

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name
greekPantheon.dateCreated

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy

// when to use structs vs classes

/*
 1. if you want a type to be passed by a value, use a struct. doing so will ensure that the type is copied when assigned or passed into a function's argument
 2. if the type does not need to support subclasses inheriting from it, then use a struct. structs do not support inheritance, and so they cannot be subclassed
 3. if the behavior you would like to represent in a type is relatively straightforawrd and encompasses a few simple values, consider starting out with a struct. you can always change the type to be a class later
 4. use a class in all other cases
 
 
 
 */
