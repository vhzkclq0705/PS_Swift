//
//  자릿수 더하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ n:Int) -> Int {
    return String(n).reduce(into: 0) { $0 += Int(String($1))! }
}
