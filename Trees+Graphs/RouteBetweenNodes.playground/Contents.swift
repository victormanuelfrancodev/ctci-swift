//: Playground - noun: a place where people can play

import UIKit

var adjMat = [[Bool]]()
var vertexes = [Vertex<T>]()

func getNeighbor(index: Int) -> Int {
    for j in 0..<vertexes.count {
        if (adjMat[index][j] && vertexes[j].visited == false) {
            return j
        }
    }
    return -1
}

func dfs(start: Int, end: Int) -> Bool {
    for i in 0..<vertexes.count { vertexes[i].visited = false }
    var stack = [Int]()
    vertex[start].visited = true
    stack.append(start)
    var b = -1
    while !stack.isEmpty {
        b = getNeighbor(index: stack.last!)
        if b == end { break }
        if b == -1 {
            stack.removeLast()
        } else {
            vertexes[b].visited = true
            stack.append(b)
        }
    }
    if b == end {
        return true
    } else {
        return false
    }
}
