//: Playground - noun: a place where people can play

import UIKit

func kthToLast<T>(k: Int) -> T? {
    var fast: Node? = head
    var slow: Node? = head
    var n = 0, f = 0, s = 0
    while fast != nil && slow != nil {
        if fast?.next != nil && fast?.next?.next != nil {
            fast = (fast?.next?.next)!
            f += 2
        } else if fast?.next != nil && fast?.next == nil {
            fast = fast?.next!
            f += 1
        } else {
            n = f
        }
        if s == n - k + 1 {
            return slow!.val
        }
        slow = slow?.next!
        s += 1
    }
    return nil
}

var l = LinkedList<Int>()
l.insert(1)
l.insert(2)
l.insert(3)
l.insert(4)
l.insert(5)
l.insert(6) // l = 1 -> 2 -> 3 -> 4 -> 5 -> 6

kthToLast(k: 2) // returns '5'

