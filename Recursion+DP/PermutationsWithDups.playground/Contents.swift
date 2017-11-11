//: Playground - noun: a place where people can play

import UIKit

extension Array {
    var powerSet: [[Element]] {
        guard !isEmpty else { return [[]] }
        return Array(self[1...]).powerSet.flatMap { [$0, [self[0]] + $0] }
    }
}

func perms(of array: String) -> [[String]] {
    var s = [String]()
    for a in array { s.append(String(a)) }
    let set = Set(s)
    let arr = Array(set)
    return arr.powerSet
}

print(perms(of: "hello"))

//prints
/*
 [[], ["e"], ["o"], ["e", "o"], ["l"], ["e", "l"], ["o", "l"], ["e", "o", "l"], ["h"], ["e", "h"], ["o", "h"], ["e", "o", "h"], ["l", "h"], ["e", "l", "h"], ["o", "l", "h"], ["e", "o", "l", "h"]]

 */
