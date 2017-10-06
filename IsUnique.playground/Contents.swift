//: Playground - noun: a place where people can play

import UIKit


// With extra data structure
func isUnique(s: String) -> Bool {
    guard !s.isEmpty else {
        return false
    }
    return s.count == Set(s.characters).count
}

isUnique(s: "abc") // returns 'true'
isUnique(s: "Hello, playground") // returns 'false'

// Without extra data structure
func isUnique(str: String) -> Bool {
    //TODO
    return false 
}
