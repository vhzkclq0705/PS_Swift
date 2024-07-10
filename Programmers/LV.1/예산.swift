//
//  예산.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ d:[Int], _ budget:Int) -> Int {
    var d = d.sorted()
    var total = d.reduce(0, +)
    
    while total > budget {
        total -= d.popLast()!
    }
    
    return d.count
}
