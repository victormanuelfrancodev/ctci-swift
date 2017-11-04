//: Playground - noun: a place where people can play

import UIKit

func multiply(a: Int, b: Int) -> Int {
    if b == 0 || a == 0 { return 0 }
    if b > 1 { return a + multiply(a: a, b: b-1) }
    if b < -1 { return a + multiply(a: a, b: b+1) }
    return a
}

let six = multiply(a: 2, b: 3) // returns '6'
