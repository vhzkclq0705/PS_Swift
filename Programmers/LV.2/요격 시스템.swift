//
//  요격 시스템.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ targets:[[Int]]) -> Int {
    return targets.sorted(by: { $0[1] < $1[1] }).reduce(into: [0, -1]) {
        if $1[0] >= $0[1] {
            $0[0] += 1
            $0[1] = $1[1]
        }
    }[0]
}
