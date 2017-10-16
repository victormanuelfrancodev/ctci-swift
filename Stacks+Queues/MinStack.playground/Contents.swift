//: Playground - noun: a place where people can play

import UIKit

var minNode = Node(val: Int.max)

func insert(node: Node) {
    if let tail = tail {
        tail.next = node
    } else {
        head = node
    }
    tail = node
    if node.val < minNode.val {
        mindNode = node
    }
}

func min() -> Node? {
    if stack.isEmpty() {
        return nil
    } else {
        return minNode
    }
}

// list = 10 -> 14 -> 3 -> 8 -> 12 -> 4
list.min() // returns '3 Node'
