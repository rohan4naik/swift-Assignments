import UIKit

class Student:CustomStringConvertible{
    
    var description: String {
        return "The name of the student is \(firstName) \(secondName)"
    }
    
    let rollNo:Int
    let firstName:String
    let secondName:String
    
    init(rollNo: Int, firstName: String, secondName: String) {
        self.rollNo = rollNo
        self.firstName = firstName
        self.secondName = secondName
    }
}

var student1 = Student(rollNo: 1, firstName: "A", secondName: "B")
var student2 = Student(rollNo: 2, firstName: "C", secondName: "D")

print(student1)


class Shoe:CustomStringConvertible{
    
    var description: String{
        return "The size of the shoe is \(size) and the color is \(color)"
    }
    
    let size: Int
    let color: String
    
    init(size: Int, color: String) {
        self.size = size
        self.color = color
    }
}
var myShoe = Shoe(size: 10, color: "Black")
print(myShoe)


class myData{
    let name: String
    let age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


// creating own protocol

protocol FullyNamed{
    var fullName: String {get}
    func sayFullName()
}

    struct Person:FullyNamed{
        var fullName: String{ return "\(firstName) \(secondName)"}
        
        func SayFullName(){
        }
        
    }

