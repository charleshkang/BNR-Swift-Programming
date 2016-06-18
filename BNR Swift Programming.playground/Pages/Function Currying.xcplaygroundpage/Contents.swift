//: [Previous](@previous)

import Foundation

// Function currying allows us to write an existing function that takes multiple parameters as a new function that takes one param and returns another function. Curried function allows us to bind values to a function's arguments before you call it. 

func greetName(name: String, withGreeting greeting: String) -> String
{
    return "\(greeting) \(name)"
}

let personalGreeting = greetName("Matt", withGreeting: "Hello,")
print(personalGreeting)


// Rewritten as a curried function
func greetingForName(name: String) -> (String) -> String
{
    func greeting(greeting: String) -> String
    {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greeterFunction = greetingForName("Matt")
let theGreeting = greeterFunction("Hello,")
print(theGreeting)

// More idiomatic
func greeting(greeting: String, name: String) -> String
{
    return "\(greeting) \(name)"
}

let newGreeting = greeting("Hello,", name: "Matt")
print(newGreeting)

struct Person {
    var firstName = "Matt"
    var lastName = "Kang"
    
    mutating func changeName(fn: String, ln: String)
    {
        firstName = fn
        lastName = ln
    }
}

var p = Person()
//let changer = Person.changeName // tells us this is a curried function. changer holds a function with the only argument being an instance of Person struct passed in as an inout. 
// a mutating function is simple a curried function whose first argument is self, passed in as an inout parameter
//changer(&p)("John", ln: "Gallagher")
//p.firstName
//p.lastName
p.changeName("Charles", ln: "Gallagher")
p.firstName

// will probably not want to use function currying to mutate a struct in real world apps