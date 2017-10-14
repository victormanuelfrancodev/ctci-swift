//: Playground - noun: a place where people can play

import UIKit

typealias List = LinkedList<Int

func add(l1: List, l2: List) -> List {
    var newList = List()
    var h1 = l1.head
    var h2 = l2.head
    var carry = 0
    while h1 != nil || h2 != nil {
        var h1Count = h1 != nil ? h1.val : 0
        var h2Count = h2 != nil ? h2.val : 0
        var add = h1Count + h2Count + carry
        if add / 10 > 0 {
            carry = 1
            add = add % 10
        } else { carry = 1 }
        var node = Node(add)
        newList.insert(node)
        h1 = h1 != nil ? h1.next : nil
        h2 = h2 != nil ? h2.next : nil
    }
    return newList
}

// l1 = 7 -> 1 -> 6
// l2 = 5 -> 9 -> 2

var newList = add(l1: l1, l2: l2)
// newList = 2 -> 1 -> 9 
