import UIKit

var greeting = "Hello, playground"

func displayPI() {
    print("3.14")
}
displayPI()


func triple(value: Int){
    let result = value * 3
    print("Result = \(result)")
}
triple(value: 5)


func multiply(firstNumber: Int, secondNumber:Int){
    let result = firstNumber * secondNumber
    print("Result = \(result)")
}
multiply(firstNumber: 10, secondNumber: 4)


func Multiply(firstNum: Int, secondNum: Int) -> Int {
    let Result = firstNum * secondNum
    return Result
}
var resultValue = Multiply(firstNum: 15, secondNum: 4)
print(Multiply(firstNum: 25, secondNum:3))
print("Result = \(Multiply(firstNum: 45, secondNum: 2))")


func multiplY(firstNUM: Int, secondNUM: Int) -> Int {
    return firstNUM * secondNUM
}
print("result = \(multiplY(firstNUM: 40, secondNUM: 7))")


func sayHELLO(to: String, and:String){
    [print("Hello \(to) and \(and)")]
}
sayHELLO(to:"Rohan", and:"Atharva")


//Arugument Labels

func SayHELLO(to person: String, and anotherPerson: String){    //to here is outer and person is internal
    print("Hello \(person) and \(anotherPerson)")
}
SayHELLO(to: "Rohan", and: "Aryan" )


func add(_ FirstNumber: Int, _ SecondNumber: Int){        // can omit the labels if _ is used
    print("Addition = \(FirstNumber + SecondNumber )")
}
add(50, 60)


func incrementthenumber(_ value: Int, by: Int) {
    print("Increament value = \(value + by)")
}
incrementthenumber(15, by: 4)


//Default parameter values

func dispUserInfo(name: String, place: String = "Pune") {
    print("Name = \(name) Place = \(place)")
}
dispUserInfo(name: "Rohan")
dispUserInfo(name: "Rohan", place: "Mumbai")

func sum(_ Value1: Int = 0, _ Value2: Int = 0, _ Value3: Int = 0){
    print(Value1+Value2+Value3)
}
sum(10)
sum(20, 40, 10)

func doublevalue(_ value1: Int) -> Int{
    value1 + 3
}
print(doublevalue(6))


func findMinMax(_ FIRSTNUMBER: Int, _ SECONDNUMBER: Int) -> (minValue: Int, maxValue: Int) {
    print("First Number = \(FIRSTNUMBER) and Second Number = \(SECONDNUMBER)")
    if FIRSTNUMBER > SECONDNUMBER {
        return (minValue: SECONDNUMBER, maxValue: FIRSTNUMBER)
    }else {
        return (minValue: FIRSTNUMBER, maxValue: SECONDNUMBER)
    }
}
let (min, max) = findMinMax(95, 25)
print("Minimum = \(min) and Maximum = \(max)")

var Result = findMinMax(70,25)
print(Result.minValue)
print(Result.maxValue)


func dateTimeFormat(from date: Date)->( year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int ){
    let calender = Calendar.current
    let components = calender.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
    return(
        components.year ?? 0,
        components.month ?? 0,
        components.day ?? 0,
        components.hour ?? 0,
        components.minute ?? 0,
        components.second ?? 0
    )
}
//let date = Date()
//print(dateTimeFormat(from: date))

var dateComponents = DateComponents()
dateComponents.year = 2004
dateComponents.month = 11
dateComponents.day = 26
dateComponents.hour = 15
dateComponents.minute = 35
dateComponents.second = 59

let calendar = Calendar.current
let manualDate = calendar.date(from: dateComponents)
  print(dateTimeFormat(from: manualDate ?? Date()))


    