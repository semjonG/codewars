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



//MARK: 8. Task. - not done
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



//MARK: 9. Task. - not done
//Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
//Return your answer as a number.

//func sumMix(_ arr: [Any]) -> Int {
//    var resultArray: [Int] = []
//
//    for item in arr {
//        if item is String {
//            resultArray.append(Int(item))
//        }
//        if item is Int {
//            resultArray.append(item)
//        }
//    }
//
//    return resultArray.reduce(0, +)
//}


func sumMix(_ arr: [Any]) -> Int {
    
    var resultArray: [Int] = []
    
    for item in arr {
       if let str = item as? String {
           resultArray.append(Int(str) ?? 0)
       }
       else {
           resultArray.append(item as? Int ?? 0)
       }
    }
    return resultArray.reduce(0, +)
}

print(sumMix(["5", "0", 9, 3, 2, 1, "9", 6, 7]))
