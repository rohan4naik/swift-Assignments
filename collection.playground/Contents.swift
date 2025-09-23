import UIKit

var names: [String] = ["Rohan", "Kunal", "Atharv"]
print(names)

var numbers: [Int8] = [8, 5, -1, 30, 90, 70]
print(numbers)

if numbers.contains(36) {
    print("array is having the element 36")
} else
{
    print("array is not having 36 element")
}


var myArray = [Int](repeating: 0,count : 25)
print("Contents inside the array = \(myArray)")
print("Count = \(myArray.count)")

var mySecondArray: [Int] = []
print(mySecondArray)

//if mySecondArray.isEmpty
    
var facilitators: [String] = ["kamakshi" ,"akshita" ,"murtuza" ,"prasad" , "abhishek"]


print("Second element of an array is \(facilitators[1])")
facilitators[1] = "newperson"
print(facilitators)
facilitators.append("newPerson")
print(facilitators)

print(facilitators.count)
facilitators[5]
print(facilitators[0].append("iOS"))
print(facilitators[0])

var strArray: [String] = ["sqift", "xcode", "Appdesign"]
print(strArray)
strArray.append("design")
print(strArray)
strArray += ["keynote", "macos"]
print(strArray)

strArray.insert("keynote", at: 0 )   //inserting operation at specified index
print(strArray)

strArray[1] = "SwiftUI"   //replace
print(strArray)

print(strArray.count)
strArray.insert("newValue", at: 3)
print(strArray)


var element = strArray.remove(at: 2)
print("element removed from an array : \(element)")
print(strArray)
var lastElemnt = strArray.removeLast()
print("Last element = \(lastElemnt)")
print(strArray)
//strArray.removeAll()
//print(strArray.count)
var droppedValue = strArray.dropLast(2)
print("Dropped last = \(droppedValue)")

// array within an array
var firstArray = [1, 2, 3]
var secondArray = [4, 5, 6]
//var combinedArray = firstArray + secondArray
//print(combinedArray)
var combinedArray = [firstArray, secondArray]
print(combinedArray)
print(combinedArray[0])
print(combinedArray[0][1])

var one = [1]
var two = [Int](repeating: 2, count: 2)
var three = [Int](repeating: 3, count: 3)
var four = [Int](repeating: 4, count: 4)
var five = [Int](repeating: 5, count: 5)
var combine = [one,two,three,four,five]
print(combine)

//Dictionary
var score = ["PLayer1": 500, "PLayer2": 400, "PLayer3": 800]
print(score)
score["PLayer1"] = 999
print(score)

score["PLayer11"] = 888
print(score)

score.updateValue(777, forKey: "PLayer2")      //updating values in dictionary
print(score)

var temp = score.updateValue(111, forKey: "PLayer") ?? 0       // if optional value not given then it would have printed nil
print(temp)

score.updateValue(111, forKey: "PLayer")
print(score)

//[string] : [string]
var languages = ["first": "swift", "second": "python", "third": "java"]
print(languages)

languages.updateValue("c++", forKey: "fourth")
print(languages)

var removedValue = languages.removeValue(forKey: "third")
print("Removed value is :\(removedValue)")
print(languages)

print(languages.count)

print("keys of disctionary are: \(languages.keys)")
print("values of disctionary are: \(languages.values)")

var fetchValue = languages["thrid"] ?? "not found"
print(fetchValue)

var person = ["name": "Rohan" , "age": "18"]
print(person)
