//: Playground - noun: a place where people can play

import UIKit

func sortedMerge<T: Comparable>(a: [T?], b: [T]) -> [T] {
    var sortedArray = a
    var i = 0
    var j = 0
    
    while j < a.count {
        if i == b.count { break }
        if sortedArray[j] == nil || b[i] < sortedArray[j]! {
            for k in (j..<sortedArray.count-1).reversed() {
                sortedArray[k] = sortedArray[k-1]
            }
            sortedArray[j] = b[i]
            i += 1
            j = 0
        } else {
            j += 1
        }
    }
    let arr = sortedArray.flatMap { $0 }
    return arr
}


sortedMerge(a: [1, 2, 5, 7, nil, nil, nil, nil, nil], b: [3, 4, 6, 8, 9]) // returns '[1, 2, 3, 4, 5, 6, 7, 8, 9]'
