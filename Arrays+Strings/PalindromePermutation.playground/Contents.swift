//: Playground - noun: a place where people can play

import UIKit

func palPerm(s: String) -> Bool {
    let arr = Array(s.lowercased().characters).filter { $0 != " " }
    let arrCount = arr.count
    let set = Set(arr)
    let setCount = set.count
    if arrCount % 2 == 0 {
        if setCount == arrCount / 2 {
            return true
        } else {
            return false
        }
    } else {
        if setCount == arrCount / 2 + 1 {
            return true
        } else {
            return false
        }
    }
}

palPerm(s: "Tact Coa") // returns 'true'
palPerm(s: "madam") // return 'true'
palPerm(s: "dambam") // returns 'false'
palPerm(s: "bam bam") // returns 'true' 
