//: Playground - noun: a place where people can play

import UIKit

func oneAway(s1: String, s2: String) -> Bool {
    var count = 0
    for c in s2.characters {
        if !s1.characters.contains(c) {
            count += 1
        }
    }
    return count <= 1
}

oneAway(s1: "pale", s2: "ple") // returns 'true'
oneAway(s1: "pales", s2: "pale") // returns 'true'
oneAway(s1: "pale", s2: "bale") // returns 'true'
oneAway(s1: "pale", s2: "bake") // returns 'false'
