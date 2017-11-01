//: Playground - noun: a place where people can play

import UIKit

extension Collection {
    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

var arr: [Int] = [1, 2, 3, 4, 5, 7, 8, 9, 10]

func element(at index: Int) -> Int {
    if let elem = arr[safe: index] {
        return elem
    } else {
        return -1
    }
}

let index = element(at: 3) // returns '4'
let twelve = element(at: 12) // returns '-1'
let eight = element(at: 6) // returns '8'

