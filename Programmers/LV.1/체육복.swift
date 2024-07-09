//
//  체육복.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var ans = [Int](repeating: 1, count: n)
    lost.forEach { ans[$0 - 1] -= 1 }
    reserve.forEach { ans[$0 - 1] += 1 }

    for i in 0..<n {
        if ans[i] == 2 {
            if i - 1 >= 0 && ans[i - 1] == 0 {
                ans[i] -= 1
                ans[i - 1] += 1
            }
            else if i + 1 < n && ans[i + 1] == 0 {
                ans[i] -= 1
                ans[i + 1] += 1
            }
        }
    }

    return ans.filter { $0 >= 1 }.count
}
