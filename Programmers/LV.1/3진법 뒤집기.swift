//
//  3진법 뒤집기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-08.
//

import Foundation

fileprivate func solution(_ n:Int) -> Int {
    var n = n
    var tmp = [String]()

    while n > 0 {
        tmp.append("\(n % 3)")
        n /= 3
    }

    return tmp.enumerated().reduce(into: 0) {
        $0 += Int(pow(Double(3), Double(tmp.count - $1.offset - 1))) * Int($1.element)!
    }
}
