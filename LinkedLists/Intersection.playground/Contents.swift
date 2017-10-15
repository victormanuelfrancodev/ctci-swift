//: Playground - noun: a place where people can play

import UIKit

typealias List = LinkedList<T>

func intersect(l1: List, l2: List) -> Node {
    var h1 = l1.head
    var h2 = l2.head
    while h1 != nil && h2 != nil {
        if h1 === h2 {
            return h1
        } else {
            h1 = h1.next
            h2 = h2.next
        }
    }
    return nil
}

// l1 = 3 -> 4 -> 5 -> 6 -> 7 -> 8
// l2 = 1 -> 2 -> 9 -> 6 -> 7 -> 8
intersect(l1: l1, l2: l2) // returns '6' 
