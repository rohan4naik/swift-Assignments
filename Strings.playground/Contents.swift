import UIKit

let appPartner: String = "Rohan"

let greet = "Hello"
var greeting = greet
greeting = "Hello world"
print(greet)
print(greeting)

let joke = """
    Q. why + operator broke up with - operator ?
    A. Due to non able to handle negativity      
"""  //  we use """ when we need to like more sentences than one
//print(joke)

let learning = "i am \r learning \t\"swift\""  // \t used as a tab button .. to leave a space   // \r used to move to first char of the next line
print(learning)

var myString = ""
if myString.isEmpty{
    print("The string is \\empty")      //  \\ used to type only \ one before any word or any where we need it
}

let firstname = "rohan"
let lastname = "naik"
let fullname = firstname + " " + lastname   //       ___ + ___  is knon as concatenation
var salutation = "dr."
salutation += fullname
print(salutation)
let age = 20
print("\(salutation) is \(age) years old")

print ("5 times 6 is \(5*6)")

let price = 500.00
let quantity = 5
let amount: Double = price * Double(quantity)
print("Amount: \(amount)") //     \() is known as interpolation
let tax = amount * 0.12
let finalprice = amount + tax
print("""
    BookName 
    """)

//let firstname = "rohan"
if firstname.lowercased() == "ROhaN".lowercased() {
    print("They are same")

}

let password = "12345"
if password.count < 8 {
    print("Your password should be atleast 8 character long")
}
password.hasSuffix("123")
password.hasPrefix("456")

let learn = "I am learning swift"
if learn.contains("swift") {
    print("I am loving it ")
}

let operation = "Success"
switch operation.lowercased() {
case "success" :
    print("I am able to learn IBBasics and string successfully")
default :
    print("something went wrong")
}

//uni code
let lion = "🦁"
print(lion)
let love = "\u{2665}"
print(love)

