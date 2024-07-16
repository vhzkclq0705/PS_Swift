//
//  프로세스.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-16.
//

import Foundation

fileprivate func solution(_ priorities:[Int], _ location:Int) -> Int {
    var pri = priorities.enumerated().map { ($0.offset, $0.element) }
    
    while true {
        let (idx, p) = pri.remove(at: 0)
        if pri.contains(where: { $0.1 > p }) { pri.append((idx, p)) }
        else if idx == location { return priorities.count - pri.count }
    }
}
