//: Playground - noun: a place where people can play

import UIKit

class Stack<T> {
    var myStack = [T]()

    func sortStack() {
        guard myStack.isEmpty == false else { return }
        var temp = [T]()
        while !myStack.isEmpty {
            temp.push(myStack.pop())
        }
        myStack.push(temp.pop())
        while !temp.isEmpty {
            if myStack.peek() < temp.peek() {
                var tp = temp.pop()
                while myStack.peek() < tp {
                    temp.push(myStack.pop())
                    if myStack.isEmpty {
                        myStack.push(tp)
                        break
                    }
                }
                myStack.push(tp)
            } else {
                myStack.push(temp.pop())
            }
        }
    }

}


// myStack = [6, 3, 5, 4]
myStack.sortStack()
// myStack = '[3, 4, 5, 6]'
