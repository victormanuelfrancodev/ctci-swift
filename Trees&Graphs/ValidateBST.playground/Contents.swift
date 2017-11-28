//: Playground - noun: a place where people can play

import UIKit

func validateBST<T: Comparable>(root: BinarySearchTree<T>) -> Bool {
    let curr = root
    var arr = [T]()
    validate(curr, &arr)
    for i in 0..<arr.count {
        for j in i..<arr.count {
            if i != j {
                if arr[i] > arr[j] {
                    return false
                }
            }
        }
    }
    return true
}

func validate<T>(_ curr: BinarySearchTree<T>?, _ arr: inout [T]) {
    guard curr != nil else { return }
    validate(curr?.left, &arr)
    arr.append(curr!.value)
    validate(curr?.right, &arr)
}

// another way to initialize a tree
let tree = BinarySearchTree(array: [4, 2, 6, 1, 3, 5, 7])
//          tree is now
//              4
//            /   \
//           2     6
//          / \   / \
//         1   3 5   7

validateBST(root: tree) // returns 'true'
