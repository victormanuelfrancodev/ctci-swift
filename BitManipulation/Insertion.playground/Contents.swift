//: Playground - noun: a place where people can play

import UIKit

func insertion(n: UInt32, m: UInt32, i: Int, j: Int) -> UInt32 {
    let mask = (m << i)
    return (n | mask)
}

let i = insertion(n: 0b10000000000, m: 0b10011, i: 2, j: 6)
let bin = String(i, radix: 2, uppercase: false)
print(bin) // prints '10001001100'
