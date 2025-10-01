import UIKit

class vehicle{       // class is a reference type and struct is a value type so we can modify the value from class
    var Name: String = "Rohan"
}

var myCar = vehicle()
myCar.Name = "baleno"
print(myCar.Name)

class Person{
    let name: String
    var description = "human being"
    init(name: String){
        self.name = name
    }
    func sayHello() {
        print ("Hello there!")
    }
}

var person = Person(name: "rohan")

person.sayHello()

class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
    
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
class bicycle{
    var Hasbasket = false
}

class Train: Vehicle{   // subclass = train ... baseclass = vehicle
    override func makeNoise() {
        print("Choo Choo !")
    }
}
let train = Train()
train.makeNoise()

class Student: Person{
    var PRN: Int = 1234
    override var description: String{
        return "Hello, my name is \(name).My PRN is \(PRN)"
    }
    init(name: String, PRN: Int){
        self.PRN = PRN
        super.init(name: name)
    }
}

class Bike{
    var speed: Int
    var engine: String
    
    init(speed: Int, engine: String ){
        self.speed = speed
        self.engine = engine
    }
}

var myBike = Bike(speed: 20, engine: "49cc")

class SuperBike: Bike{
    var topSpeed: Int
    init(topSpeed: Int, currentSpeed: Int, engine: String){
        self.topSpeed = topSpeed
        
        super.init(speed: 40, engine: "490cc")
    }
}
