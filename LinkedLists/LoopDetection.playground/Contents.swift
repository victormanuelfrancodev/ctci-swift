//: Playground - noun: a place where people can play

import UIKit

typealias List = LinkedList<T>

func isCircle(list: List) -> Node? {
    var nodes: Set<Node> = []
    var head = list.head
    while head != nil {
        if !nodes.contains(head) {
            nodes.insert(head)
        } else {
            return head
        }
        head = head.next
    }
    return nil
}

// list = A -> B -> C -> D -> E -> C
isCircle(list: list) // returns 'C Node'
