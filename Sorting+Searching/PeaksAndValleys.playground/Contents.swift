//: Playground - noun: a place where people can play

import UIKit

func peaksAndValleys(arr: [Int]) -> [Int] {
    var maxValue = 0
    var a = arr
    for i in stride(from: 1, to: a.count, by: 2) {
        maxValue = max(a[i-1], a[i], a[i+1])
        if a[i-1] == maxValue {
            a.swapAt(i-1, i)
        } else if a[i+1] == maxValue {
            a.swapAt(i, i+1)
        }
    }
    
    return a
}

peaksAndValleys(arr: [5, 3, 1, 2, 3]) // returns '[3, 5, 1, 3, 2]'

