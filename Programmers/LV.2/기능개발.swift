//
//  기능개발.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-15.
//

import Foundation

fileprivate func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresses = Array(progresses.reversed())
    var speeds = Array(speeds.reversed())
    var ans = [Int]()
    var cnt = 0
    var day = 1

    while !progresses.isEmpty {
        if progresses.last! + day * speeds.last! >= 100 {
            cnt += 1
            progresses.removeLast()
            speeds.removeLast()
        } else {
            if cnt > 0 { ans.append(cnt) }
            cnt = 0
            day += 1
        }
    }

    return ans + [cnt]
}
