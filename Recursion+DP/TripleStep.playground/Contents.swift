//: Playground - noun: a place where people can play

import UIKit

func staircase(n: Int) -> Int {
    guard n > 0 else { return 0 }
    if n == 1 { return 1 }
    if n == 2 { return 1 + staircase(n: n-1) }
    if n == 3 { return 1 + staircase(n: n-2) + staircase(n: n-1) }
    return staircase(n: n-3) + staircase(n: n-2) + staircase(n: n-1)
}


let thirteen = staircase(n: 5) // returns '13'
