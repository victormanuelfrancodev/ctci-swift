//: Playground - noun: a place where people can play

import UIKit

func inOrder<T>(_ arr: inout [T], _ node: BinarySearchTree<T>?) {
    guard node != nil else { return }
    inOrder(&arr, node?.left)
    arr.append(node!.value)
    inOrder(&arr, node?.right)
}

func random<T>(node: BinarySearchTree<T>) -> T {
    var arr = [T]()
    inOrder(&arr, node)
    let random = arr[Int(arc4random_uniform(UInt32(arr.count-1)))]
    return random
}

let tree = BinarySearchTree(array: [1, 2, 3, 4, 5, 6, 7])
let ran = random(node: tree) // returns a random node's value every time.
