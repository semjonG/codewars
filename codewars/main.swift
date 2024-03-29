//
//  main.swift
//  codewars
//
//  Created by mac on 11.06.2022.
//

import Foundation


//MARK: 1. Task. - done
// [4,3,9,7,2,1] -> [2,9,3,49,4,1]

//print(Double(a).truncatingRemainder(dividingBy: b))
//
//
//func squareOrSquareRoot(_ input: [Int]) -> [Int] {
//
//    var resultArray: [Int] = []
//
//    for item in input {
//
//        var root = sqrt(Double(item))
//
//        if root.truncatingRemainder(dividingBy: 1) == 0 {
//            resultArray.append(Int(root))
//        } else {
//            resultArray.append(item * item)
//        }
//    }
//    return resultArray
//}
//
//print(squareOrSquareRoot([4,3,9,7,2,1]))



// MARK: 2. Task. - done
//348597 => [7,9,5,8,4,3]
//0 => [0]

//func digitize(_ num:Int) -> [Int] {
//    return String(num).reversed().map { Int(String($0))! }
//}
//digitize(348597)



//MARK: 3. Task. - done
//[1, 2, 3] --> [2, 4, 6]

//func maps(a : Array<Int>) -> Array<Int> {
//    return a.map { $0 * 2 }
//}
//
//maps(a: [1, 2, 3])



//MARK: 4. Task. - done

//You get an array of numbers, return the sum of all of the positives ones.
//
//Example [1,-4,7,12] => 1 + 7 + 12 = 20
//
//Note: if there is nothing to sum, the sum is default to 0.


//func sumOfPositives (_ numbers: [Int] ) -> Int {
//
//    return numbers.filter { $0 > 0 }.reduce(0, +)
//}
//
//sumOfPositives([])

//MARK: 5. Task. - done
//Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.
//
//For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

//  [10, 343445353, 3453445, 3453545353453] should return 3453455.

//func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
//
//    var resultArray = array
//    let firstMin = array.min() ?? 0
//    let firstMinIndex = resultArray.firstIndex(of: firstMin) ?? 0
//    resultArray.remove(at: firstMinIndex)
//
//    let secondMin = resultArray.min() ?? 0
//
//    return firstMin + secondMin
//}
//
//print(sumOfTwoSmallestIntegersIn([19, 5, 42, 2, 77]))



//MARK: 6. Task. -  done
// This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

//func simpleMultiplication(_ num: Int) -> Int {
//
//    var result = 0
//
//    if Double(num).truncatingRemainder(dividingBy: 2) == 0  {
//        result = num * 8
//    } else {
//        result = num * 9
//    }
//    return result
//}
//
//print(simpleMultiplication(8))



//MARK: 7. Task. -  done
//func sum_str(_ a:String, _ b:String) -> String {
//    let aInt = Int(a) ?? 0
//    let bInt = Int(b) ?? 0
//
//    var sumInt = String(aInt + bInt)
//
//    return sumInt
//}



//MARK: 8. Task. - done
//Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//func take(_ arr: [Int], _ n: Int) -> [Int] {
//
//    if arr.count > 0, n > 0 {
//      return Array(arr[0..<n])
//    }
//
//    if n > arr.count - 1 {
//        return arr
//    }
//
//    return []
//}



//MARK: 9. Task. -  done
//Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
//Return your answer as a number.

//func sumMix(_ arr: [Any]) -> Int {
//
//    var resultArray: [Int] = []
//
//    for item in arr {
//       if let str = item as? String {
//           resultArray.append(Int(str) ?? 0)
//       }
//       else {
//           resultArray.append(item as? Int ?? 0)
//       }
//    }
//    return resultArray.reduce(0, +)
//}
//
//print(sumMix(["5", "0", 9, 3, 2, 1, "9", 6, 7]))



//MARK: 10. Task. - done
//Complete the square sum function so that it squares each number passed into it and then sums the results together.
//For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

//func squareSum(_ vals: [Int]) -> Int {
//    return vals.map { $0 * $0 }.reduce(0, +)
//}
//print(squareSum([1, 2, 2]))



//MARK: 11. Task. - done
//Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.
//
//Numerical Score    Letter Grade
//90 <= score <= 100    'A'
//80 <= score < 90    'B'
//70 <= score < 80    'C'
//60 <= score < 70    'D'
//0 <= score < 60    'F'
//Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

//func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
//    let averageNumber = (s1 + s2 + s3) / 3
//
//    switch averageNumber {
//    case 90..<101:
//        return "A"
//    case 80..<90:
//        return "B"
//    case 70..<80:
//        return "C"
//    case 60..<70:
//        return "D"
//    case 0..<60:
//        return "F"
//    default:
//        print("Error: use consistent values")
//    }
//    return ""
//}
//
//print(getGrade(60, 80, 90))



//MARK: 12. Task. - done
//After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight for you and your girlfriend and try to leave all the mess behind you.
//
//You will need a rental car in order for you to get around in your vacation. The manager of the car rental makes you some good offers.
//
//Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.
//
//Write a code that gives out the total amount for different days(d).

//func rentalCarCost(_ days: Int) -> Int {
//    switch days {
//    case 7... : return ( days * 40 ) - 50
//    case 3...6 : return ( days * 40 ) - 20
//    default: return days * 40
//    }
//    return days
//}



//MARK: 13. Task. - done
//Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.
//
//For example:
//
//summation(2) -> 3
//1 + 2
//
//summation(8) -> 36
//1 + 2 + 3 + 4 + 5 + 6 + 7 + 8


//func summation(_ n: Int) -> Int {
//    return n * (n + 1) / 2 // Gauss formula
//}
//print(summation(213))



//MARK: 14. Task. - done
//Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.
//
//Note: only positive integers will be tested.

//func sumOfIntegersInString(_ string: String) -> Int {
//
//    var resultArray: [Int] = []
//    let stringArray = string.components(separatedBy: CharacterSet.decimalDigits.inverted)
//    for item in stringArray {
//        if let number = Int(item) {
//            resultArray.append(number)
//        }
//    }
//    return resultArray.reduce(0, +)
//}
//
//print(sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"))



//MARK: 15. Task. - done
//Make a simple function called greet that returns the most-famous "hello world!".

//func greet() -> String {
//    return  "hello world!"
//}



//MARK: 16. Task. - done
//Clock shows h hours, m minutes and s seconds after midnight.

//Your task is to write a function which returns the time since midnight in milliseconds.

//Example:

//h = 0
//m = 1
//s = 1

//result = 61000

// 1 hour = 3600000
// 1 min = 60000
// 1 sec = 1000

// heroes.append(contentsOf:[abaddon, ember, gondor])

//func past2(_ h: Int, _ m: Int, _ s: Int) -> Int {
//    var resultArray: [Int] = []
//    resultArray.append(contentsOf: [h*3600000, m*60000, s*1000])
//    return resultArray.reduce(0, +)
//}
//
//func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
//    return h*3600000 + m*60000 + s*1000
//}



//MARK: 17. Task. - done

// https://www.codewars.com/kata/566fc12495810954b1000030/train/swift

//Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.
//
//Square all numbers k (0 <= k <= n) between 0 and n.
//
//Count the numbers of digits d used in the writing of all the k**2.
//
//Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

//n = 10, d = 1
//the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
//We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.

//var stringArray = squaresArray.map { String($0) }
//
//var joinedString = stringArray.joined()
//
//let myNumbers = joinedString.filter { "\(d)".contains($0) }.count


//func nbDig(_ n: Int, _ d: Int) -> Int {
//    return Array(0...n)
//        .map { String($0*$0) }
//        .joined()
//        .filter { "\(d)".contains($0)}
//        .count
//}
//
//print(nbDig(25, 1))



//MARK: 18. Task. - done
// Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.

//func angle(_ n: Int) -> Int {
//    return 180*(n-2)
//}



//MARK: 19. Task. - done
//The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.
//
//Task
//
//Given a year, return the century it is in.
//
//Examples
//
//1705 --> 18
//1900 --> 19
//1601 --> 17
//2000 --> 20

//func century(_ year: Int) -> Int {
//    return Int((Double(year) / 100).rounded(.up))
//}



//MARK: 20. Task. - done
//func reverse(_ str: String) -> String {
//    return String(str.reversed())
//}


//MARK: 21. Task. - done
//func booleanToString(_ b: Bool) -> String {
//  return String(b)
//}

//func booleanToString(_ b: Bool) -> String {
//  return "\(b)"
//}


//MARK: 22. Task. - done
//func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
//    return a.contains(x)
//}


//MARK: 23. Task. - done
//func descendingOrder(of number: Int) -> Int {
//  return Int(String("\(number)".sorted(by: >))) ?? 0
//}


//MARK: 24. Task. - done
//  replaceAll(replaceAll(array: [1,2,2], old: 1, new: 2) // [2,2,2]

//func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
//    return array.map { $0 == old ? new : $0 }
//}


//MARK: 25. Task. - done
//func switchItUp(_ number: Int) -> String {
//    switch number {
//    case 0: return "Zero"
//    case 1: return "One"
//    case 2: return "Two"
//    case 3: return "Three"
//    case 4: return "Four"
//    case 5: return "Five"
//    case 6: return "Six"
//    case 7: return "Seven"
//    case 8: return "Eight"
//    case 9: return "Nine"
//    default:
//        "wrong number"
//    }
//    return ""
//}


//MARK: 26. Task. - done
// toLeetSpeak("LEET") returns "1337"

//{
//  A : '@',
//  B : '8',
//  C : '(',
//  D : 'D',
//  E : '3',
//  F : 'F',
//  G : '6',
//  H : '#',
//  I : '!',
//  J : 'J',
//  K : 'K',
//  L : '1',
//  M : 'M',
//  N : 'N',
//  O : '0',
//  P : 'P',
//  Q : 'Q',
//  R : 'R',
//  S : '$',
//  T : '7',
//  U : 'U',
//  V : 'V',
//  W : 'W',
//  X : 'X',
//  Y : 'Y',
//  Z : '2'
//}

//func toLeetSpeak(_ s : String) -> String {
//    var notJoinedArray: [String] = []
//    for character in s {
//        switch character {
//        case "A": notJoinedArray.append("@")
//        case "B": notJoinedArray.append("8")
//        case "C": notJoinedArray.append("(")
//        case "D": notJoinedArray.append("D")
//        case "E": notJoinedArray.append("3")
//        case "F": notJoinedArray.append("F")
//        case "G": notJoinedArray.append("6")
//        case "H": notJoinedArray.append("#")
//        case "I": notJoinedArray.append("!")
//        case "J": notJoinedArray.append("J")
//        case "K": notJoinedArray.append("K")
//        case "L": notJoinedArray.append("1")
//        case "M": notJoinedArray.append("M")
//        case "N": notJoinedArray.append("N")
//        case "O": notJoinedArray.append("0")
//        case "P": notJoinedArray.append("P")
//        case "Q": notJoinedArray.append("Q")
//        case "R": notJoinedArray.append("R")
//        case "S": notJoinedArray.append("$")
//        case "T": notJoinedArray.append("7")
//        case "U": notJoinedArray.append("U")
//        case "V": notJoinedArray.append("V")
//        case "W": notJoinedArray.append("W")
//        case "X": notJoinedArray.append("X")
//        case "Y": notJoinedArray.append("Y")
//        case "Z": notJoinedArray.append("2")
//
//        default: notJoinedArray.append("\(character)")
//        }
//    }
//    return notJoinedArray.joined()
//}
//
//print(toLeetSpeak("HELLO WORLD"))



//MARK: 27. Task. - done
//func hero(bullets: Int, dragons: Int) -> Bool {
//    if bullets/dragons >= 2 {
//        return true
//    } else {
//        return false
//    }
//}



//MARK: 28. Task. - done
//func sumOfMinimums(_ numbers: [[Int]]) -> Int {
//    var minValues = 0
//    for array in numbers {
//        minValues += array.min() ?? 0
//    }
//
//    return minValues
//}

//func sumOfMinimums(_ numbers: [[Int]]) -> Int {
//    return numbers.map { $0.min() ?? 0 }.reduce(0, +)
//}



//MARK: 29. Task. - done
//func flip(_ direction: String, _ a: [Int]) -> [Int] {
//    switch direction {
//    case "R": return a.sorted()
//    default: return a.sorted().reversed()
//    }
//}
//print(flip("L", [1, 4, 5, 3, 5]))

//func flip(_ direction: String, _ a: [Int]) -> [Int] {
//     direction == "R" ? a.sorted() : a.sorted().reversed()
//}
//print(flip("R", [3, 2, 1, 2]))



//MARK: 30. Task. - done

//func quarter(of month: Int) -> Int {
//    switch month {
//    case 0...3: return 1
//    case 4...6: return 2
//    case 7...9: return 3
//    default: return 4
//    }
//}



//MARK: 31. Task. - done
//func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
//    return [a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c].max() ?? 0
//}
//print(expressionMatter(1, 1, 1))



//MARK: 32. Task. - done

//func multi_table(_ number: Int) -> String {
//     "1 * \(number) = \(number)\n2 * \(number) = \(2*number)\n3 * \(number) = \(3*number)\n4 * \(number) = \(4*number)\n5 * \(number) = \(5*number)\n6 * \(number) = \(6*number)\n7 * \(number) = \(7*number)\n8 * \(number) = \(8*number)\n9 * \(number) = \(9*number)\n10 * \(number) = \(10*number)"
//}



//MARK: 33. Task. - done

//func reverseSeq(n: Int) -> [Int] {
//    Array(1...n).reversed()
//}
//print(reverseSeq(n: 5))



//MARK: 34. Task. - done
// перемножить все элементы в массиве

//func grow(_ arr: [Int]) -> Int {
//    arr.reduce(1, *)
//}
//
//print(grow([4,1,1,1,4]))



//MARK: 35. Task. - done
//1 --> 0 (the first even number is 0)
//3 --> 4 (the 3rd even number is 4 (0, 2, 4))
//100 --> 198
//1298734 --> 2597466

//func nthEven(_ n: Int) -> Int {
//    (n * 2) - 2
//}
//print(nthEven(1))



//MARK: 36. Task. - done
// вернуть первый непоследователный элемент (который не проходит условие "след элемент больше на 1")

//func firstNonConsecutive (_ arr: [Int]) -> Int? {
//  for (index, element) in arr.enumerated() {
//        if index > 0 {
//            if !(element == (arr[index - 1] + 1)) { return element }
//        }
//    }
//    return nil
//}
//
//func firstNonConsecutive (_ arr: [Int]) -> Int? {
//  for i in 1..<arr.count {
//    if arr[i] - arr[i-1] > 1 { return arr[i] }
//  }
//    return nil
//}



//MARK: 37. Task. - done
//a string with size 6 should return :'101010'.
//
//with size 4 should return : '1010'.
//
//with size 12 should return : '101010101010'.

//func stringy(_ size: Int) -> String {
//    var result = ""
//    var i = 1
//    while size >= i {
//        result += i % 2 == 0 ? "0" : "1"
//        i += 1
//    }
//    return result
//}
//
//func stringy(_ size: Int) -> String {
//  return (0..<size).map { $0 % 2 == 0 ? "1" : "0" }.joined()
//}



//MARK: 38. Task. - done

//func evenOrOdd(_ number:Int) -> String {
//    number % 2 == 0 ? "Even" : "Odd"
//}
//
//print(evenOrOdd(3))



//MARK: 39. Task. - done
//func boolToWord(_ bool: Bool) -> String {
//    bool == true ? "Yes" : "No"
//}



//MARK: 40. Task. - done
//func multiply(_ a: Double, _ b: Double) -> Double {
//     a*b
//}
//
//let multiply: (Double,Double) -> Double = {$0*$1}



//MARK: 41. Task. - done
//func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
//    n % x == 0 && n % y == 0 ? true : false
//}


/*
//MARK: 42. Task. - done
For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.
 */
//func findDifference(_ a: [Int], _ b: [Int]) -> Int {
//    abs(a.reduce(1, *) - b.reduce(1, *))
//}



//MARK: 43. Task. - done
//Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

// "15889923" -> "01111100"

//func fakeBin(digits: String) -> String {
//    String(digits.map { $0 < "5" ? "0" : "1" })
//}


//MARK: 44. Task. - done
//func repeatStr(_ n: Int, _ string: String) -> String {
//  String(repeating: string, count: n)
//}



//MARK: 45. Task. - done
//1: -1
//14: -14
//-34: 34
//func opposite(number: Double) -> Double {
////    number * -1
//    -number
//}



//MARK: 46. Task. - done
//func greet(_ name: String) -> String {
//    "Hello, \(name) how are you doing today?"
//}



//MARK: 47. Task. - done
//Write function bmi that calculates body mass index (bmi = weight / height2).
//
//if bmi <= 18.5 return "Underweight"
//
//if bmi <= 25.0 return "Normal"
//
//if bmi <= 30.0 return "Overweight"
//
//if bmi > 30 return "Obese"

//func bmi(_ weight: Int, _ height: Double) -> String {
//    let index = (Double(weight) / (height*height))
//    switch true {
//    case index <= 18.5: return "Underweight"
//    case index <= 25.0: return "Normal"
//    case index <= 30.0: return "Overweight"
//    case index > 30: return "Obese"
//    default: return "wrong value"
//    }
//}


//MARK: 48. Task. - done
//123  --> "123"
//999  --> "999"
//-100 --> "-100"
//func numberToString(number: Int) -> String {
//  "\(number)"
//}



//MARK: 49. Task. - done
//name equals owner    'Hello boss'
//otherwise    'Hello guest'
//func great(_ name: String, _ owner: String) -> String {
//    name == owner ? "Hello boss" : "Hello guest"
//}



//MARK: 50. Task. - done
// Return the average of the given array rounded down to its nearest integer.
//func getAverage(_ marks: [Int]) -> Int {
//    marks.reduce(0, +) / marks.count
//}



//MARK: 51. Task. - done
//10 --> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// 1 --> [1]
//func monkeyCount(_ n: Int) -> [Int] {
//    Array(1...n)
//}



//MARK: 52. Task. - done
//func getPlanetName(_ id: Int) -> String {
//    
//  switch id {
//    case 1:
//      return "Mercury"
//    case 2:
//      return "Venus"
//    case 3:
//      return "Earth"
//    case 4:
//      return "Mars"
//    case 5:
//      return "Jupiter"
//    case 6:
//      return "Saturn"
//    case 7:
//      return "Uranus"
//    case 8:
//      return "Neptune"
//    default:
//      return  "none"
//  }
//}


//MARK: 53. Task. - done
//var laLigaGoals = 43
//var championLeagueGoals = 10
//var copaDelReyGoals = 5
//
//var totalGoals = laLigaGoals + championLeagueGoals + copaDelReyGoals



//MARK: 54. Task. - done
//In this game, the hero moves from left to right. The player rolls the dice and moves the number of spaces indicated by the dice two times.

//func move(_ p: Int, _ r: Int) -> Int {
//    return (r*2)+p
//}


//MARK: 55. Task. - done
//This function should test if the factor is a factor of base.
//Return true if it is a factor or false if it is not.

//func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
//    base % factor == 0 ? true : false
//    // return base % factor == 0
//}




//MARK: 56. Task. - done
//Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//func take(_ arr: [Int], _ n: Int) -> [Int] {
//    arr.isEmpty || n == 0 ? [] : Array(arr.prefix(n))
////    Array(arr.prefix(n))
//}



//MARK: 57. Task. - Done "A wolf in sheep's clothing"
//[sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]   (YOU ARE HERE AT THE FRONT OF THE QUEUE)
//   7      6      5      4      3            2      1
//Examples
//
//Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
//Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"
//
//Input: ["sheep", "sheep", "wolf"]
//Output: "Pls go away and stop eating my sheep"

//func warnTheSheep(_ queue: [String]) -> String {
//    var position: Int = Array(queue.reversed()).firstIndex(where: { $0 == "wolf" })!
//
//    return position == 0 ? "Pls go away and stop eating my sheep" : "Oi! Sheep number \(position)! You are about to be eaten by a wolf!"
//}



//MARK: 58. Task. - Done "Kata Example Twist"
// https://www.codewars.com/kata/525c1a07bb6dda6944000031/train/swift
// Add the value "codewars" to the array websites/Websites 1,000 times.

//func KataTwist() -> Array<Any> {
//  return Array(repeating: "codewars", count: 1000)
//}


//MARK: 59. Task. - Done
/*
// Для строки вида AAABBCCAA вывести A:5, B:2, C:2
func stringToDictionary(someString: String) -> Dictionary<Character, Int> {

    var result: Dictionary<Character, Int> = [:]

    for character in someString {
        if result[character] == nil {
            result[character] = 1

        } else {

            result[character] = (result[character] ?? 0) + 1
        }
    }
    return result
}

print(stringToDictionary(someString: "AAABBCCAA"))

// обратная конвертация
func dictionaryToString(someDictionary: Dictionary<Character, Int>) -> String {
    var result = ""
    
    for (key, value) in someDictionary {
        result.append("\(key)\(value)")
    }
    return result
}
    
print(dictionaryToString(someDictionary: ["A":5, "B":2, "C":2]))
*/


//MARK: 60. Task. - Done
// https://www.codewars.com/kata/56c5847f27be2c3db20009c3/swift
/*
 func subtractSum1(_ n: Int) -> String {
     "apple"
 }

 func subtractSum2(_ n: Int) -> String {
     let fruits = [1: "kiwi", 2: "pear", 3: "kiwi", 4: "banana", 5: "melon", 6: "banana", 7: "melon", 8: "pineapple", 9: "apple", 10: "pineapple", 11: "cucumber", 12: "pineapple", 13: "cucumber", 14: "orange", 15: "grape", 16: "orange", 17: "grape", 18: "apple", 19: "grape", 20: "cherry", 21: "pear", 22: "cherry", 23: "pear", 24: "kiwi", 25: "banana", 26: "kiwi", 27: "apple", 28: "melon", 29: "banana", 30: "melon", 31: "pineapple", 32: "melon", 33: "pineapple", 34: "cucumber", 35: "orange", 36: "apple", 37: "orange", 38: "grape", 39: "orange", 40: "grape", 41: "cherry", 42: "pear", 43: "cherry", 44: "pear", 45: "apple", 46: "pear", 47: "kiwi", 48: "banana", 49: "kiwi", 50: "banana", 51: "melon", 52: "pineapple", 53: "melon", 54: "apple", 55: "cucumber", 56: "pineapple", 57: "cucumber", 58: "orange", 59: "cucumber", 60: "orange", 61: "grape", 62: "cherry", 63: "apple", 64: "cherry", 65: "pear", 66: "cherry", 67: "pear", 68: "kiwi", 69: "pear", 70: "kiwi", 71: "banana", 72: "apple", 73: "banana", 74: "melon", 75: "pineapple", 76: "melon", 77: "pineapple", 78: "cucumber", 79: "pineapple", 80: "cucumber", 81: "apple", 82: "grape", 83: "orange", 84: "grape", 85: "cherry", 86: "grape", 87: "cherry", 88: "pear", 89: "cherry", 90: "apple", 91: "kiwi", 92: "banana", 93: "kiwi", 94: "banana", 95: "melon", 96: "banana", 97: "melon", 98: "pineapple", 99: "apple", 100: "pineapple"]
     
     var newN = n
     
     while newN >= 10 && newN < 10000 {

         let sum = String(newN)
             .compactMap({$0.wholeNumberValue})
             .reduce(0, +)
         
         newN = newN - sum
         
         if let fruit = fruits[newN] {
             return fruit
         }
     }
     return "Not found"
 }
 */


//MARK: 61. Task. - Done
// https://www.codewars.com/kata/55902c5eaa8069a5b4000083/train/swift
/*
 func formatMoney(_ val:Double) -> String {
 //    let formatter = NumberFormatter()
 //        formatter.numberStyle = .currency
 //        formatter.maximumFractionDigits = 2
 //        formatter.roundingMode = .halfUp
 //        formatter.usesGroupingSeparator = false
 //        return formatter.string(from: NSNumber(value: val)) ?? ""
     String(format: "$%.2f", val)
 }
 */

//MARK: 62. Task. - Done
// https://www.codewars.com/kata/546e2562b03326a88e000020/train/swift
/*
 func squareDigits(_ num: Int) -> Int {
     Int(String(num)
         .compactMap({$0.wholeNumberValue})
         .map { $0*$0 }
         .map(String.init).joined()) ?? 0
 }
 */


