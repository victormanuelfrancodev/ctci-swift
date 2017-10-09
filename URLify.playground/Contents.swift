//: Playground - noun: a place where people can play

import UIKit

func urlify(string: String) -> String {
    let str = string.components(separatedBy: " ")
    let arr = str.filter( { $0 != "" })
    let newString = arr.joined(separator: "%20")
    return newString
}

urlify(string: "Mr John Smith    ") // returns 'Mr%20John%20Smith'
