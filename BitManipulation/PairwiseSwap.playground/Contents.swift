//: Playground - noun: a place where people can play

import UIKit


func swapBits(num: Int) -> String {
    var bit = Array(String(num, radix: 2, uppercase: false).characters)
    for i in stride(from: 0, to: bit.count-1, by: 2) {
        bit.swapAt(i, i+1)
    }
    return String(bit)
}

swapBits(num: 10) // 10 = "1010" -> returns "0101"
swapBits(num: 21) // 21 = "10101" -> returns "01011"
