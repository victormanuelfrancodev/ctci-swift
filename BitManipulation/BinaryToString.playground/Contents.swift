//: Playground - noun: a place where people can play

import UIKit

func doubleToBinary(d: Double) -> String {
    if d >= 1 || d <= 0 { return "ERROR" }
    var bin = "."
    var num = d
    while num > 0 {
        if bin.count > 32 { return "ERROR" }
        let b = num * 2
        if b > 1 {
            bin += "1"
            num = b - 1
        } else {
            bin += "0"
            num = b
        }
    }
    return bin
}

let b = doubleToBinary(d: 0.72)
print(b) // returns 'ERROR'

