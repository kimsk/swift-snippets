//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
println("Hello, world!")

let something = "Test"
let another = 1
println(String(another) + something)

var value:Float = 4.0

let apples = 3
let appleSummary = "I have \(apples) apples."

var arrayInt = [1,2,3]
arrayInt[0]

var emptyArray = [String]()
println(emptyArray)
emptyArray.append("TEST")
emptyArray[0] = "TEST2"
emptyArray.append("XXX")
emptyArray.capacity
emptyArray.count

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
println(teamScore)

var optionalString: String? = "Hello"
println(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

optionalString?.isEmpty


let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
println(statistics.sum)
println(statistics.2)


func returnZeroFromOdd() -> (Int -> Int) {
    
    func fun(number:Int) -> Int{
        if number%2 != 0 {
            return 0
        } else {
            return number
        }
    }
    
    return fun
}

func returnZeroFromOdd2(number:Int) -> Int{
    if number%2 != 0 {
        return 0
    } else {
        return number
    }
}

var numbers = [20, 19, 7, 12]

numbers.map(returnZeroFromOdd())
numbers.map(returnZeroFromOdd2)


numbers.map({
    (number: Int) -> Int in
        let result = 3 * number
        return result
    })


numbers.map({
    (number) -> Int in
        if number%2 != 0 {
            return 0
        }
        else {
            return number
        }
    })

let ret = numbers.map({number in return 4 * number})
ret


class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
    
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)


class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let nilSquare: Square? = nil
optionalSquare?.sideLength
nilSquare?.sideLength









