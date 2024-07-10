//
//  행렬의 덧셈.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map {
        return zip($0.0, $0.1).map {
            return $0.0 + $0.1
        }
    }
}
