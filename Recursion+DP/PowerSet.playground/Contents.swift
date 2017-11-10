//: Playground - noun: a place where people can play

import UIKit

extension Array {
    var powerSet: [[Element]] {
        guard !isEmpty else { return [[]] }
        return Array(self[1...]).powerSet.flatMap { [$0, [self[0]] + $0] }
    }
}

let pS = [1, 2, 3].powerSet // returns '[[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]'

