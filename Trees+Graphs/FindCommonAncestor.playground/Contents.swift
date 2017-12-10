//: Playground - noun: a place where people can play

import UIKit

class Node<T: Comparable> {
    var value: T
    var leftChild: Node?
    var rightChild: Node?
    init (value: T) { self.value = value }
}

class BinarySearchTree<T: Comparable> {
    var root: Node<T>?
    func findLCA<T>(node: Node<T>?, n1: T, n2: T) -> Node<T>? {
        if node == nil { return nil }
        if (node!.value > n1 && node!.value > n2) {
            return findLCA(node: node?.leftChild, n1: n1, n2: n2)
        }
        if (node!.value < n1 && node!.value < n2) {
            return findLCA(node: node?.rightChild, n1: n1, n2: n2)
        }
        return node
    }
}

var tree = BinarySearchTree<String>()
tree.root = Node(value: "D")
tree.root?.leftChild = Node(value: "B")
tree.root?.rightChild = Node(value: "F")
tree.root?.leftChild?.leftChild = Node(value: "A")
tree.root?.leftChild?.rightChild = Node(value: "C")
tree.root?.leftChild?.rightChild?.leftChild = Node(value: "E")
tree.root?.leftChild?.rightChild?.rightChild = Node(value: "G")

var n1 = "A", n2 = "F";
var t = tree.findLCA(node: tree.root, n1: n1, n2: n2)
print("Ancestor of \(n1) and \(n2) is \(t?.value ?? "-1")")
// prints -> 'Ancestor of A and F is D'

