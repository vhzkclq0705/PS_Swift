//
//  하샤드 수.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ x:Int) -> Bool {
    return  x % "\(x)".reduce(into: 0) { $0 += Int(String($1))! } == 0
}
