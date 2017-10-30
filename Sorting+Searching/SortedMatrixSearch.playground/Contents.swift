//: Playground - noun: a place where people can play

import UIKit

func searchSorted<T: Comparable>(matrix: [[T]], element: T) -> (row: Int, col: Int) {
    for i in 0..<matrix.count {
        if matrix[i].contains(element) {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == element {
                    return (i, j)
                }
         }
        }
    }
    
    return (-1, -1)
}


var arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
var elem = 4

let containsIt = searchSorted(matrix: arr, element: elem)
print(containsIt.row) // prints '1'
print(containsIt.col) // prints '1'
