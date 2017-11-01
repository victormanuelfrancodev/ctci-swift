//: Playground - noun: a place where people can play

import UIKit

var arr: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func element(at index: Int) -> Int {
    return !arr.contains(index) ? -1 : arr[index]
}

let indexOfFour = element(at: 3) // returns '4'
let indexOfTwelve = element(at: 12) // returns '-1'

