//
//  정수 제곱근 판별.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ n:Int64) -> Int64 {
    let res = sqrt(Double(n))
    return res.truncatingRemainder(dividingBy: 1) == 0 ? Int64((res + 1) * (res + 1)) : -1
}
