//: Playground - noun: a place where people can play

import UIKit

extension Collection {
    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

func inOrder<T>(_ arr: inout [T], _ node: BinarySearchTree<T>?) {
    guard node != nil else { return }
    inOrder(&arr, node?.left)
    arr.append(node!.value)
    inOrder(&arr, node?.right)
}

func successor<T>(_ node: BinarySearchTree<T>, _ tree: BinarySearchTree<T>) -> T? {
    var nodes = [T]()
    inOrder(&nodes, tree)
    guard let nodeIndex = nodes.index(of: node.value) else { return nil }
    if let suc = nodes[safe: nodeIndex.hashValue+1] { return suc }
    return nil
}


let tree = BinarySearchTree(array: [4, 2, 6, 1, 3, 5, 7])
//          tree is now
//              4
//            /   \
//           2     6
//          / \   / \
//         1   3 5   7

let four = BinarySearchTree(value: 4)
successor(four, tree) // returns '5'

let seven = BinarySearchTree(value: 7)
successor(seven, tree) // returns 'nil'
