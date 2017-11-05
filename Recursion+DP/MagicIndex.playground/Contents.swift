//: Playground - noun: a place where people can play

import UIKit

func magicIndex(_ arr: [Int]) -> Bool {
    for i in 0..<arr.count { if arr[i] == i { return true } }
    return false
}


magicIndex([-3, -2, 1, 3, 7, 9]) // returns 'true'
magicIndex([1, 2, 3, 4, 5, 6, 7]) // returns 'false'
