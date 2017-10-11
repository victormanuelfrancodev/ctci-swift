//: Playground - noun: a place where people can play

import UIKit

func rotateString(s1: String, s2: String) -> Bool {
    let rotate = s2 + s2
    if rotate.contains(s1) {
        return true
    } else {
        return false
    }
}

rotateString(s1: "waterbottle", s2: "erbottlewat") // returns 'true'
rotateString(s1: "Apple", s2: "leApp") // returns 'true'
rotateString(s1: "Apple", s2: "anaBan") // returns 'false'
