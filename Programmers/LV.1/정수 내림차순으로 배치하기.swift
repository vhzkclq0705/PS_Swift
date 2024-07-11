//
//  정수 내림차순으로 배치하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).reversed().sorted(by: >)))!
}
