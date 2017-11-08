//: Playground - noun: a place where people can play

import UIKit

func getChange(n: Int) -> Int {
    guard n > 0 else { return 0 }
    var coins = [1, 5, 10, 25]
    var ways = Array(repeating: 0, count: n+1)
    ways[0] = 1
    for i in 0..<coins.count {
        for j in 1...n {
            if j >= coins[i] { ways[j] = ways[j] + ways[j-coins[i]] }
        }
    }
    return ways[n]
}

getChange(n: 100) // returns '242'
