//
//  음양 더하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-08.
//

import Foundation

fileprivate func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return absolutes.enumerated().reduce(into: 0) {
        $0 += signs[$1.offset] ? $1.element : -$1.element
    }
}
