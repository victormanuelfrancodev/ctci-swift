//: Playground - noun: a place where people can play

import UIKit

func compress(str: String) -> String {
    var compressed = ""
    var count = 0
    var currentC = str.characters.first!
    for c in  str.characters {
        if c == currentC {
            count += 1
        } else {
            compressed += "\(currentC)\(count)"
            currentC = c
            count = 1
        }
    }
    compressed += "\(currentC)\(count)"
    return compressed
}

compress(str: "aabcccccaaa") // returns 'a2b1c5a3'
compress(str: "aaaaaaaaaa") // returns 'a10'
compress(str: "abcdefg") // returns 'a1b1c1d1e1f1g1'
