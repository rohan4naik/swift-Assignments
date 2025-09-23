import UIKit

let temperature = 100
if temperature >= 100 {
    print("The water is boiling")
}
else{
    print("The water is not boiling")
}


var number = 100
var result = number < 10 // in swift we can directly assign boolean valure to a variable without useing if..else...elseif..
print(result)

if number != 100{
    print("false")
}


//else if lader

var temp = 100
if temp <= 100 && temp >= 0 {
    print("yes")
}else if temp != 0 {
    print("no")
    
}else {
    print("no result")
}


//switch

let switchChar = 2
switch switchChar {
    case 1:
        print("one")
        fallthrough  //used when we need to stop the break of that case and let the next case also run //in default it uses break command and stop the next case to run
    case 2:
        print("two")
    default :
        print("default")
}

enum Directon { //enum is mostly used for type //it is kind off defined datatype
    case north
    case south
    case east
    case west
}

var direction: Directon = .north

switch direction{
    case .north:
        print("north")
    case .south:
        print("south")
    case .east:
        print("east")
    case .west:
        print("west")
}


let char = "a"
switch char {
    case "a","e","i","o","u":
        print("vowel")
    default :
        print("consonant")
}
    

//switch along with ranges

var distance = 100
switch distance{
    case 0...9:
        print("your destination is close")
    case 10...99:
        print("your destination is a medium distnace from here")
    case 100...999:
        print("your destination is far from here")
    default:
        print("are you sure want to travel this far")
}


let temperature1 = 70
switch temperature1{
    case 65... :
        print ("the temperature is just right")
    case  0...75:
        print ("the temperature is just right")
    default :
        print("it's to hot")
}

//Ternary operator

var validAge = 21
var myAge = 18 < validAge ? "Minor":"Adult"

let a = 15
let b = 4
var largest = a > b ? "a" : "b"
print(largest)
