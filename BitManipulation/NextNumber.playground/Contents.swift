//: Playground - noun: a place where people can play

import UIKit

func getOnesCount(num: Int) -> Int {
    let bin = String(num, radix: 2, uppercase: false)
    let ones = bin.filter { $0 == "1"}
    return ones.count
}

func nextNumber(num: Int) -> (Int, Int) {
    var small = 0
    var big = 0
    let numOfOnes = getOnesCount(num: num)
    for i in num+1...num + 10 {
        if numOfOnes == getOnesCount(num: i) {
            big = i
            break
        }
    }
    for i in (num-10...num-1).reversed() {
        if numOfOnes == getOnesCount(num: i) {
            small = i
            break
        }
    }
    return (small, big)
}

print(nextNumber(num: 18)) // prints '(17, 20)'
