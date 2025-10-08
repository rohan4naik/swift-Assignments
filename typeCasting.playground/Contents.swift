import UIKit

//create an employee class with name field

class Employee {
    var name: String
    //define init
    
    init(name: String){
        self.name = name
    }
    
    //define func work()
    func work() {
        print("\(self.name) employee is working")
    }
}


class Manager: Employee {
    func conductingMeeting(){
        print("Manager is conducting meeting")
    }
}


//create subclass2
//developer: employee
//define func writecode()
class Developer: Employee {
    func writeCode(){
        print("Developer is writing code")
    }
}


//create subclass3
//intern: employee
//define func learn()
class Intern: Employee {
    func learn(){
        print("Intern is learning")
    }
}


//create an array with diff types of employee
var staff: [Employee] = [
    Manager(name: "rohan"),
    Developer(name: "sagar"),
    Intern(name: "shruti"),
    Manager(name: "kamakshi ")
]

for person in staff{
    person.work()
}


print("---------------------")
//type inspection
for person in staff{
    if person is Manager{
        print("\(person.name) is a Manager")
    } else if person is Developer{
        print("\(person.name) is a Developer")
    } else if person is Intern{
        print("\(person.name) is a Intern")
    }
}


print("*********************")
//type casting to call subclass specific methods
for person in staff{
    if let manager = person as? Manager{
        //person.work()
        manager.conductingMeeting()
    } else if let developer = person as? Developer{
        developer.writeCode()
    } else if let intern = person as? Intern{
        intern.learn()
    }
}


print("#####################")
//employee example extended to include forced casting (as!)
//using forced casting
for person in staff{
    //this is safe if we know the type for sure
    if person is Manager{
        let manager = person as! Manager //force cast
        manager.conductingMeeting()
    } else if person is Developer{
        let developer = person as! Developer
        developer.writeCode()
    } else if person is Intern{
        let intern = person as! Intern
        intern.learn()
    }
}
