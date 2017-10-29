//: Playground - noun: a place where people can play

import UIKit

func sparseSearch(array: [String], str: String) -> Int {
    for i in 0..<array.count {
        if arr[i] == str {
            return i
        }
    }
    return -1
}


var arr = ["at", "", "", "", "ball", "", "", "car", "", "", "dad", "", ""]
sparseSearch(array: arr, str: "ball") // returns '4' 
