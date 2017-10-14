//: Playground - noun: a place where people can play

import UIKit

func deleteMiddle(node: Node) {
    var curr = head
    if curr.next.val == node.val {
        curr.next = curr.next.next
        return
    } else {
        curr = curr.next
    }
}

// list = a -> b -> c -> d -> e -> f
deleteMiddle(node: Node(c))
// list = a -> b -> d -> e -> f
