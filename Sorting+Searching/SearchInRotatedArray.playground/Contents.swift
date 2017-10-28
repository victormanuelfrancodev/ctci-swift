//: Playground - noun: a place where people can play

import UIKit

func searchIn(rotated array: [Int], n: Int) -> Int {
    for i in 0..<array.count {
        if array[i] == n {
            return i
        }
    }
    return -1
}

var arr = [15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14]

searchIn(rotated: arr, n: 5) // returns '8' 
