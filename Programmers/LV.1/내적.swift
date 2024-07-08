//
//  내적.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-08.
//

import Foundation

fileprivate func solution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).reduce(into: 0) { $0 += $1.0 * $1.1 }
}
