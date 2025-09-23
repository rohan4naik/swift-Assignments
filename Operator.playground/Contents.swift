import Cocoa

var greeting = "Hello, playground"
var myScore = 8*6
var myOpponentScore: Float = 100/3
var finalScore = Float(myScore) + myOpponentScore
print("The final score is \(finalScore)")

myScore += 52   //myScore = myscore + 52
print(myScore)

var x = 15
var y = 5
var z = 3
var result = Double(x + y)/Double(z)
print(result)

3 != 2
(1,"zebra") < (2, "apple")

//Ternary operator

var validAge = 21
var myAge = 18 < validAge ? "Minor":"Adult"

let a = 15
let b = 4
var largest = a > b ? "a" : "b"
print(largest)

//Nil Coalescing operator

var groupPartner: String? = "Atharva"
var partnerName = groupPartner ?? "Rohan"
print(partnerName)

var defaultColor: String? = "Red"
var finalPaintColor = defaultColor ?? "Blue"
print(finalPaintColor)

//closed range operators

for values in 1...10 {
     print("2 * \(values) = \(2 * values)")
}

var list = [11,22,45,62,202]
for values in list {
    if values%2 == 0 {
        
    }
}

//half open range operators

for values in 1..<10 {
    print(values)
}

var names = ["rohan","atharva","jolly"]
for name in names[1...2]{
    print(name)
}

//logical operator
var hasDoorCode = true
var retinaScanPassed = false
if hasDoorCode && retinaScanPassed{
    print("You can enter")
}else {
   print("You cannot enter")
}
let fingerPrintScan = true
if fingerPrintScan || retinaScanPassed{
    print("You can enter")
}
