//
//  연속된 부분 수열의 합.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var (l, r) = (0, 0)
    var sum = sequence.first!
    var res = [[Int]]()

    while r < sequence.count {
        if sum == k { res.append([l, r]) }
        if sum < k {
            r += 1
            if r < sequence.count { sum += sequence[r] }
        } else {
            sum -= sequence[l]
            l += 1
        }
    }

    return res.sorted { $0[1] - $0[0] < $1[1] - $1[0] }.first!
}
