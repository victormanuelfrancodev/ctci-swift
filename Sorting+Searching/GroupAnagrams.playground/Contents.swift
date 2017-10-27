//: Playground - noun: a place where people can play

import UIKit

var arr = ["drawer", "ether", "redraw", "there","reward","warder", "three", "warred"]

func group(anagrams: [String]) -> [String] {
    var groups = [[String]]()
    groups.append([anagrams[0]])
    for i in 1..<anagrams.count {
        let word = anagrams[i]
        var added = false
        for j in 0..<groups.count {
            if word.sorted() == groups[j][0].sorted() {
                groups[j].append(word)
                added = true
            }
        }
        if !added {
            groups.append([word])
        }
    }
    let groupOfAnagrams = groups.flatMap { $0 }
    return groupOfAnagrams
}

group(anagrams: arr) // returns '["drawer", "redraw", "reward", "warder", "warred", "ether", "there", "three"]'
