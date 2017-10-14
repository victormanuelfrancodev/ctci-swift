//: Playground - noun: a place where people can play

import UIKit

typealias List = LinkedList<String>

func isLLAPal(list: List) -> Bool {
    var pal = ""
    var head = list.head
    while head != nil {
        pal += head.val
    }
    return palPerm(s: pal)
}

// list = m -> a -> d -> a -> m
var isIt = isLLAPal(list: list)
// isIt = 'true'




// Helper method from prior questions
func palPerm(s: String) -> Bool {
    let arr = Array(s.lowercased().characters).filter { $0 != " " }
    let arrCount = arr.count
    let set = Set(arr)
    let setCount = set.count
    if arrCount % 2 == 0 {
        if setCount == arrCount / 2 {
            return true
        } else {
            return false
        }
    } else {
        if setCount == arrCount / 2 + 1 {
            return true
        } else {
            return false
        }
    }
}
