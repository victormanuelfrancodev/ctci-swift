//: Playground - noun: a place where people can play

import UIKit

func convert(num1: Int16, num2: Int16) -> Int {
    let num = String(num1 ^ num2, radix: 2, uppercase: false)
    let ones = num.filter { $0 == "1" }
    return ones.count
}

convert(num1: 0b11101, num2: 0b01111) // returns '2'
