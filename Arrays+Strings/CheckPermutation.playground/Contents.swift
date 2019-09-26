//: Playground - noun: a place where people can play

import UIKit

func checkPermutation(a: String, b: String) -> Bool {
    guard !a.isEmpty && !b.isEmpty else {  return false }
    if a.count == b.count {
        let aSorted = a.sorted()
        let bSorted = b.sorted()
        for x in 0..<a.count{
         if aSorted.contains(bSorted[x]){
                counter += 1
             }
        }
        return aSorted.count - 1 == counter
    } else {
        let biggerOne = a.count > b.count ? a.sorted() : b.sorted()
        let smallerOne = a.count > b.count ? b.sorted() : a.sorted()
        var count = 0
        for i in 0..<smallerOne.count {
            if biggerOne.contains(smallerOne[i]) {
                count += 1
            }
        }
        return smallerOne.count == count
    }
}

checkPermutation(a: "abc", b: "cba") // returns 'true'
checkPermutation(a: "abcd", b: "adb") // returns 'true'
checkPermutation(a: "abcf", b: "abd") // returns 'false'
checkPermutation(a: "pale", b: "bale") // returns 'true'
checkPermutation(a: "pcle", b: "bale") // returns 'false'
