//
//  평균 구하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}
