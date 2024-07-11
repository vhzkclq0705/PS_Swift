//
//  자연수 뒤집어 배열로 만들기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().map { Int(String($0))! }
}
