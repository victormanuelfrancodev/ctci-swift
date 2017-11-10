//: Playground - noun: a place where people can play

import UIKit

func power<T>(set: [T]) -> [String] {
    var powerSet = [""]
    for s in set { powerSet.append("\(s)") }
    var combined = ""
    for s in set { combined += "\(s)" }
    powerSet.append(combined)
    for i in 0..<set.count {
        for j in 0..<set.count {
            guard i != j else { break }
            let s = String("\(set[i])\(set[j])".sorted())
            if !powerSet.contains(s) { powerSet.append(s) }
         }
    }
    return powerSet
}

let pS = power(set: [1, 2, 3]) // returns '["", "1", "2", "3", "123", "12", "13", "23"]'
