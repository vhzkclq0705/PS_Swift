//
//  다트 게임.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ dartResult:String) -> Int {
    let dartResult = Array(dartResult)
    var ans = [Int]()

    for dart in dartResult {
        if dart.isNumber {
            if !ans.isEmpty && ans.last! == 1 && dart == "0" {
                ans.removeLast()
                ans.append(10)
            }
            else { ans.append(Int(String(dart))!) }
        }
        else {
            let n = ans.count - 1
            switch dart {
            case "S": break
            case "D": ans[n] *= ans[n]
            case "T": ans[n] *= ans[n] * ans[n]
            case "#": ans[n] *= -1
            default:
                for i in n - 1...n where i >= 0 {
                    ans[i] *= 2
                }
            }
        }
    }

    return ans.reduce(0, +)
}
