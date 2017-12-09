//: Playground - noun: a place where people can play

import UIKit

public class Node {
    public var data: Int
    public var left: Node?
    public var right: Node?
    init(data: Int, left: Node?, right: Node?) {
        self.data = data
        self.left = left
        self.right = right
    }
}

public class Tree {
    public var root: Node
    init(root: Node) { self.root = root }
    func minimalTree(array: [Int]) {
        if let n = minimize(array, 0, array.count-1) { root = n }
    }
    // Takes an array and turns it into a BST which guarantees the minimal height for a sorted array.
    func minimize(_ array: [Int], _ low: Int, _ high: Int) -> Node? {
        if high < low { return nil }
        let mid = (low + high) / 2
        let node = Node(data: array[mid], left: nil, right: nil)
        if let n = minimize(array, low, mid-1){ node.left = n }
        if let n = minimize(array, mid+1, high) { node.right = n }
        return node
    }
}
