import UIKit

//enum without type
enum CoffeeSize{
    case small               //can also be written as {case small, medium, large }
    case medium
    case large
}

var myCoffeeSize: CoffeeSize = .medium        //can also be written as   var myCoffeeSize = CoffeeSize.medium

myCoffeeSize = .small            //changing the value

switch myCoffeeSize{
case.small:
    print("I have ordered small size coffee")
case.medium:
    print("I have ordered medium size coffee")
case.large:
    print("I have ordered large size coffee")
}

if myCoffeeSize == .small{
    print("I have ordered small size coffee")
}

enum Genre{
    case action, adventure, comedy, romance
}
struct Movie{
    var title: String
    var releaseYear: Int?
    var genre: Genre
}

let myMovie = Movie(title: "Inception", releaseYear: 2010, genre:.action)

if let releaseYear = myMovie.releaseYear {
    print("The movie \(releaseYear) was released")
} else{
    print("The movie \(myMovie.title) release year is not avaible")
}


// enum with type
enum CoffeeType: String{
    case latte = "creamy latte"
    case cappucino = "espresso cappucccino"
    case macchiato = "cold brew macchiato"
}

struct CoffeeOrder{
    var size: CoffeeSize
    var type: CoffeeType
    var description: PaymentMethod
}

enum PaymentMethod {
    case cash
    case ApplePay(deviceId: Int)
    case creditCard(number: String, expirationDate: String)
    var description: String{
        switch self{
        case .cash:
            return "with cash"
        case let .ApplePay(deviceId):
            return "payment done with applepay \(deviceId)"
        case let .creditCard(number, expirationDate):
            return "credit card \(number) expiing \(expirationDate)"
        }
    }
}

func describingOrder(_ order: CoffeeOrder){
    print("I have ordered a \(order.type.rawValue) \(order.size) size coffee with \(order.description)")
}

let myOrder = CoffeeOrder(size: .medium, type: .macchiato, description: .creditCard(number: "1800-2112-3333-1001", expirationDate: "07/25"))
describingOrder(myOrder)


// implicity assigned raw values

enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let bestPlanet: Planet = .earth
print(bestPlanet.rawValue)


// resursive

indirect enum ArithmeticExpression{
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// (5+10) * 2
let five = ArithmeticExpression.number(5)
let ten = ArithmeticExpression.number(10)
let sum = ArithmeticExpression.addition(five, ten)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int{
    switch expression{
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
