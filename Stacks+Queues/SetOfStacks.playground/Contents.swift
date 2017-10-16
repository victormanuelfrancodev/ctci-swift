//: Playground - noun: a place where people can play

import UIKit

class Stack<T> {
    // usual push, pop, peek, isEmpty and size methods
}

class SetOfStacks<T> {
    var set = [Stack<T>]()
    var threshold = 8
    var currentStack = Stack<T>()
    init() {}
    func push(val: T) {
        if currentStack.size() == threshold {
            set.append(currentStack)
            currentStack = Stack<T>()
        }
        currentStack.push(val: val)
    }
    func pop() -> T? {
        if currentStack.isEmpty() {
            _ = set.removeLast()
            if let current = set.last {
                currentStack = current
            } else {
                return nil
            }
        }
        return currentStack.pop()
    }
}
