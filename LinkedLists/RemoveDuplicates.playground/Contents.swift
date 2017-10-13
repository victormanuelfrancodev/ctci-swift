//: Playground - noun: a place where people can play

import UIKit

func removeDups(list: LinkedList<T>) -> LinkedList<T> {
    var head = list.head
    var set: Set<Int> = []
    var newList = LinkedList<T>()
    while head != nil {
        set.insert(head.val)
        head = head.next
    }
    for s in set {
        var node = Node(s)
        newList.insert(node)
    }
    return newList
}
var l = LinkedList<Int>()
l.insert(1)
l.insert(2)
l.insert(3)
l.insert(2)
l.insert(4)         // 'l = 1 -> 2 -> 3 -> 1 -> 4'

removeDups(list: l) // 'l = 1 -> 2 -> 3 -> 4'
