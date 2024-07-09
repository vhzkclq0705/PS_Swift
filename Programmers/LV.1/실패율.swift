//
//  실패율.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var allClearCnt: Double = 0
    let cnt = stages.reduce(into: [Double](repeating: 0, count: N)) {
        if $1 > N { allClearCnt += 1 }
        else { $0[$1 - 1] += 1 }
    }
    var ans = [Double](repeating: allClearCnt, count: N)

    for i in 0..<N {
        for j in i..<N {
            ans[i] += cnt[j]
        }
        ans[i] = cnt[i] / ans[i]
    }

    return ans.enumerated().sorted(by: { $0.element > $1.element }).map {
        $0.offset + 1
    }
}
