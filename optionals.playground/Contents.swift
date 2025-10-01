import UIKit

struct Student{
    var name: String
    var enrollmentYear: Int? // declaring optional
}

let firstStudent = Student(name: "Rohan", enrollmentYear: nil)
let secondStudent = Student(name: "Shubham", enrollmentYear: 2018)

var serverCode: Int? = nil

//if firstStudent.enrollmentYear != nil {
//    let actualYear = firstStudent.enrollmentYear!
//    print(actualYear)
//}
//
//let unwrappedYear = firstStudent.enrollmentYear

if let unwrappedYear = firstStudent.enrollmentYear {
    print(unwrappedYear)
} else {
    print("not enrolled yet")
}

let string = "rohan"
let possibleNumber = Int(string)

if let number = possibleNumber {
    print("\(number)")
} else {
    print("couldn't")
}

func fullName(firstName: String, middleName: String?, lastName: String){
    if let middleName = middleName{
        print("\(firstName) \(middleName) \(lastName)")
    } else {
        print("\(firstName) \(lastName)")
    }
}

fullName(firstName: "rohan", middleName: "sandeep", lastName: "naik")

@MainActor
func getURL(_ string: String)-> String?{
    if let url = URL(string: string), UIApplication.shared.canOpenURL(url){
        return "\(url)"
    } else {
        return nil
    }
}
let urlString = "https://www.apple.com"

if let url = getURL(urlString){
    print(url)
} else{
 print("invalid URL")
}

struct Toddler{
    var birthName: String
    var monthsOld: Int
    
    init?(birthName: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.birthName = birthName
            self.monthsOld = monthsOld
        }
    }
}

if let aBaby = Toddler(birthName: "rohan", monthsOld: 144){
    print(aBaby)
} else {
    print("Not a toddler")
}

struct Person{
    let age: Int
    let residence: Residence?
}

struct Residence{
    let address: Address?
}

struct Address{
    let buildingName: String?
    let street: String?
    let ApartmentNumber: Int?
}

let aPerson = Person(age: 15, residence: Residence(address:(Address(buildingName: "Vyas" , street: "kothrud", ApartmentNumber: 7))))

if let aprtmenNumber = aPerson.residence?.address?.ApartmentNumber{
    print("\(aprtmenNumber)")
} else {
    print("No apartment number")
}
