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


//MARK: 26. Task. - not done
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

//func grow(_ arr: [Int]) -> Int {
//    arr.reduce(1, *)
//}
//
//print(grow([4,1,1,1,4]))
