import UIKit

//defining structure

struct Person {
    var name: String
    var age: Int
    
    func sayHello() {                                                 // we define fucntions in struct only and just can call it later as needed
        print("Hi, I am \(name) and I am \(age) years old")
    }
}
let person = Person(name: "Rohan", age: 25)      //here we create an initializer
print(person.name, person.age)


//adding fuctionality

person.sayHello()   // calling a function


// default initializer

struct Odometer {
    var count: Int = 0
}
var odometer = Odometer()   //here we create an initializer
print(odometer.count)

struct Bankaccount{
    var balance: Double =  0.0
    var accountNumber: String
}
var newAccount  = Bankaccount(accountNumber: "12345")
var anotherAccount = Bankaccount(balance: 70, accountNumber: "54321")
print(newAccount)
print(anotherAccount)


//struct Temperature{
//    var celsius: Double
//    init(celsius: Double){      // init is to instantiate
//        self.celsius = celsius
//    }
//    init(fahrenheit: Double){
//        celsius = (fahrenheit - 32) / 1.8
//    }
//}
//let currentTemperature = Temperature(celsius: 18.5)
//let boiling = Temperature(fahrenheit: 212.0)
//
//print(currentTemperature.celsius)
//print(boiling.celsius)


//mutationg func

struct Size{
    var height: Double
    var width: Double
    
    mutating func setHeigh() {
        self.height = 55
    }
    
    func area() -> Double{
        //height = 30.0
        return height * width
    }
}
var someSize = Size(height: 10.0, width: 20.0)
print("Height = \(someSize.height)")
print(someSize.area())
someSize.setHeigh()
print("Height = \(someSize.height)")
print(someSize.area())


//computed properties

struct Rect {
    var length : Int
    
    init(length: Int) {
        self.length = length
    }
    
    func dispLength() {
        print("Length = \(length)")
    }
}

var rectObject = Rect(length: 10)
rectObject.dispLength()


//Property observer

struct StepCounter{
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
            //print(\(oldValue))
        }
        didSet{
            if totalSteps > oldValue {
                print("You took \(totalSteps - oldValue) extra steps")
            }
        }
    }
}
var counter = StepCounter()
counter.totalSteps = 40
counter.totalSteps = 60
counter.totalSteps = 60


struct Temperature{
    static let boilingPoint = 100.0
    static func convertedFromFahrenheit(_ temperatureInFahrenheit: Double) -> Double{
        (((temperatureInFahrenheit - 32) * 5) / 9)
    }
}

let boilingPoint = Temperature.boilingPoint
let currentTemperature = Temperature.convertedFromFahrenheit(99)
let positiveNumber = abs(-4.14)    // abs is used to convert negative to positive

//copying

var SomeSize = Size(height: 1000, width: 250)
var anotherSize = SomeSize

SomeSize.width = 500

print(SomeSize.width)
print(anotherSize.width)
