import UIKit

var globalVariable = 50
print(globalVariable)

func printingNumber(){
    var num = 25      // local variable(local scope)
    print("Num \(num)")
}
printingNumber()


var age = 35   // global variable

@MainActor
func printAge(){
    print("age is \(age)")
}
printAge()


func printBottleCounts(){
    var bottleCount = 45
    print("Bottle count is \(bottleCount)")
}
printBottleCounts()
//print("Outside the func bottle counts = \(bottleCount)")   //can't accept local variable outside the scope


func printFiveNumbers(){
    var name = "Rohan"
    for i in 1...5{
        print("\(i) \(name)")
    }
    
    print(index)
    print("Name = \(name)")
}
 printFiveNumbers()



//variable shadowing

let points = 200

for i in 1...3{
    let points = 300
    print(i + points)
}
print("Points outside for loop = \(points)")


var name: String? = "rohan"
if let name = name{
    print("\(name)")
}else {
    print("name value is nil")
}


struct Person{
    var name: String
    var id: Int
    
    init(name: String, id: Int){
        self.name = name// it is used to hold the current address of the obj
        self.id = id
    }
}
 var personObj = Person(name: "rohan", id: 1234)

print("name: \(personObj.name)")
print("ID: \(personObj.id)")
