//: Playground - noun: a place where people can play

import UIKit

var arr = [5, 1, 4, 4, 5, 9, 7, 13, 3] // stream of integers

func getRankOfNumber(_ x: Int) -> Int {
    let dupX = arr.filter { $0 == x }
    let dupXCount = dupX.count
    let lessThanX = arr.filter { $0 < x }
    var lessThanXCount = lessThanX.count
    if dupXCount > 1 { lessThanXCount += (dupXCount - 1) }
    return lessThanXCount
}

getRankOfNumber(1) // returns '0'
getRankOfNumber(3) // returns '1'
getRankOfNumber(4) // returns '3'
