//
//  의상.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-15.
//

import Foundation

fileprivate func solution(_ clothes:[[String]]) -> Int {
    return clothes.reduce(into: [String: Int]()) {
        $0[$1[1], default: 0] += 1
    }.reduce(into: 1) { $0 *= $1.value + 1 } - 1
}
