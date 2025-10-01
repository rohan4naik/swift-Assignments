import UIKit

var birthdayIsToday = true
var invitedGuests: [String] = ["Guest1"]
var cakeCandlesLit: Bool = true

@MainActor
func singHappyBirthday() {
    guard birthdayIsToday else {
        print("No one has a birthday today!")
        return
    }
    guard !invitedGuests.isEmpty else {
        print("It's just a family party!")
        return
    }
    guard cakeCandlesLit else {
        print("The cake's candles haven't been lit")
        return
    }
    print("Happy Birthday to You! 🎉🎂🎈")
}
singHappyBirthday()


func divide(_ number: Double, by divisor: Double){
    guard divisor != 0.0 else {
        print("Inside Guard")
    return
    }
    let result = number/divisor
    print(result)
}
divide(10.0, by: 0.0)


var title: String? = nil
var price: Double? = nil
var pages: Int? = nil

func processBook(title: String?, price: Double?, pages: Int?){
    guard let theTitle = title, let thePrice = price, let thePages = pages else{
        return
    }
    print("\(theTitle) costs $\(thePrice) and has \(thePages) pages.")
}

processBook(title: "Swift", price: 6969, pages: 8888)
