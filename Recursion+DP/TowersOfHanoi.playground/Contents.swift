//: Playground - noun: a place where people can play

import UIKit

func towersOfHanoi(n: Int, start: String, via: String, dest: String) {
    if n > 0 {
        towersOfHanoi(n: n-1, start: start, via: dest, dest: via)
        print("Move disk from \(start) to \(dest)")
        towersOfHanoi(n: n-1, start: via, via: start, dest: dest)
    }
}

towersOfHanoi(n: 3, start: "A", via: "B", dest: "C")
