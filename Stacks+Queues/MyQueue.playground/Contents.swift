//: Playground - noun: a place where people can play

import UIKit

class Stack<T> { /* usual methdods */ }

class MyQueue<T> {
    var queue = Stack<T>()
    var temp = Stack<T>()
    init() {}
    func enqueue(val: T) {
        if queue.isEmpty() {
            queue.push(val: val)
        } else {
            transfer(val: val)
        }
    }
    func dequeue() -> T? {
        if queue.isEmpty() {
            return nil
        } else {
            return queue.pop()
        }
    }
    func transfer(val: T) {
        while !queue.isEmpty() {
            temp.push(val: queue.pop())
        }
        queue.push(val: val)
        while !temp.isEmpty() {
            queue.push(val: temp.pop())
        }
    }
}
