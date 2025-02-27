//: [Previous](@previous)

import Foundation

// MARK: - Our First Function

func printDashes() {
    print("------------")
}

// Variables - mutable
var greeting = "Hello, world!"
// Constants - immutable
let likeHummus = "likes hummus"

print(greeting)

greeting = "Hello, playground!"
print(greeting)

greeting = "Ron \(likeHummus)!"
print(greeting)

var name = "Ron"
greeting = name + " " + likeHummus
print(greeting)

printDashes()


let listOfPeople = ["Ron", "Jane", "Bob"]
for name in listOfPeople {
    // String Interpolation
    print("\(name) \(likeHummus)")
}

greeting = "\(name) likes to skateboard."
print(greeting)

printDashes()

let names = ["Elmo", "Bert", "Cookie Monster", "Big Bird", "Oscar the Grouch", "Grover"]

struct PersonWithHobby {
    let name: String
    let hobby: String
}

let peopleWithHobby: [PersonWithHobby] = [
    PersonWithHobby(name: "Elmo", hobby: "Hugging"),
    PersonWithHobby(name: "Bert", hobby: "Reading"),
    PersonWithHobby(name: "Cookie Monster", hobby: "Eating"),
    PersonWithHobby(name: "Big Bird", hobby: "Singing"),
    PersonWithHobby(name: "Oscar the Grouch", hobby: "Complaining"),
    PersonWithHobby(name: "Grover", hobby: "Playing"),
]

for person in peopleWithHobby {
    print("\(person.name.capitalized) likes \(person.hobby.lowercased()).")
}

printDashes()
printDashes()


// MARK: - Optionals




//: [Next](@next)
