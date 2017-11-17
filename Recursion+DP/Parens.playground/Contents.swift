//: Playground - noun: a place where people can play

import UIKit

func generateParens(_ count: Int) -> [String] {
    var list = [String]()
    var str: [String] = Array(repeating: "", count: count*2)
    generate(&list, count, count, &str, 0)
    return list
}

private func generate(_ list: inout [String], _ left: Int, _ right: Int, _ str: inout [String], _ index: Int){
    if left < 0 || right < left { return }
    if left == 0 && right == 0 {
        list.append( str.joined() )
    } else {
        str[index] = "("
        generate(&list, left-1, right, &str, index+1)
        str[index] = ")"
        generate(&list, left, right-1, &str, index+1)
    }
}

let three = generateParens(3) // returns '["((()))", "(()())", "(())()", "()(())", "()()()"]'
