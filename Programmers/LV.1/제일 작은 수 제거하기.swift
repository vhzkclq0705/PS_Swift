//
//  제일 작은 수 제거하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)

    return arr.isEmpty ? [-1] : arr
}
