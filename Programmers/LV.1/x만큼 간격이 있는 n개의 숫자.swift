//
//  x만큼 간격이 있는 n개의 숫자.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64(x * $0) }
}
