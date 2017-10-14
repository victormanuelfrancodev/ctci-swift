//: Playground - noun: a place where people can play

import UIKit

typealias List = LinkedList<Int>

func partition(list: List, p: Int) -> List {
    var l = List()
    var head = list.head
    while head != nil {
        var n = Node(head.val)
        if head.val < p {
            l.insertFront(n)
        } else {
            l.insertBack(n)
        }
        head = head.next
    }
    return l
}

// list = 3 -> 5 -> 1 -> 10 -> 2 -> 5 -> 8
partition(list: list, p: 5)
// list = 2 -> 1 -> 3 -> 5 -> 10 -> 5 -> 8
