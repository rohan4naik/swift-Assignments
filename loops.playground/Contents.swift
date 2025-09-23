import UIKit

// for loop
for index in 1...5 {
    print(index)
}

for _ in 1...5 {
    print("hello !")
}

let names: [String] = ["rohan", "kunal", "atharv"]
for name in names{
    print(name)
}

for letter in "ABCDEF" {
    print("the letter is \(letter)")
}

for(index,letter) in "ABCDEFG".enumerated( ){
    print("Index :\(index) Letter :\(letter)")
}

let vehicles = ["Car": 4, "Bike": 2, "Unicycle": 3]
for (vehicleName, wheelCount) in vehicles {
    print("A \(vehicleName) has \(wheelCount) wheels.")
}

let animals = ["Lion", "Tiger", "Elephant", "Snake"]
for index in 0..<animals.count {
    print("\(animals[index])")
}

let minutes = 60
let minuteInterval = 5

for tickMark in stride(from: 0, through: minutes, by: minuteInterval){
    print(tickMark)
}

for var index in 1...10{
    print(index)
    index += 1
}



// while loop

var numberOfLives = 3
while numberOfLives < 0 {
    print("I still have \(numberOfLives) lives .")
}

var number = 0
while number < 10{
    number += 1
    if number % 2 == 0 {
        continue
    }
    print("Odd number : \(number)")
}

var count = 0
repeat{
    print(count)
    count += 1
} while {
    continue
}
