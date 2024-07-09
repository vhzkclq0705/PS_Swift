//
//  모의고사.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ answers:[Int]) -> [Int] {
    let first = [1, 2, 3, 4, 5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var ans = [1: 0, 2: 0, 3: 0]

    answers.enumerated().forEach {
        if first[$0.offset % first.count] == $0.element { ans[1]! += 1 }
        if second[$0.offset % second.count] == $0.element { ans[2]! += 1 }
        if third[$0.offset % third.count] == $0.element { ans[3]! += 1 }
    }

    let maxNum = ans.values.max()

    return ans.filter { $0.value == maxNum }.keys.sorted()
}
