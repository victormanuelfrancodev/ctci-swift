//: Playground - noun: a place where people can play

import UIKit

func zeroMatrix(arr: [[Int]]) -> [[Int]] {
    var col: Set<Int> = []
    var row: Set<Int> = []
    var arr = arr
    for i in 0..<arr.count {
        for j in 0..<arr[i].count{
            if arr[i][j] == 0 {
                col.insert(j)
                row.insert(i)
            }
        }
    }
    for i in 0..<arr.count {
        for j in 0..<arr[i].count{
            if col.contains(j) {
                arr[i][j] = 0
            }
            if row.contains(i) {
                arr[i][j] = 0
            }
        }
    }
    return arr
}


zeroMatrix(arr: [ [1, 2, 3],
                  [1, 0, 1],
                  [4, 3, 4] ])
    // returns '[ [1, 0, 3],
    //            [0, 0, 0],
    //            [4, 0, 4] ]'
