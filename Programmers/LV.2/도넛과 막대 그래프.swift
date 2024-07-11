//
//  도넛과 막대 그래프.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ edges:[[Int]]) -> [Int] {
    var (node, stick, eight) = (0, 0, 0)
    var cnt = [Int: (Int, Int)]()
    
    edges.forEach {
        cnt[$0[0], default: (0, 0)].0 += 1
        cnt[$0[1], default: (0, 0)].1 += 1
    }
    
    for (key, value) in cnt {
        if value.0 >= 2 && value.1 == 0 { node = key }
        else if value.0 == 0 && value.1 >= 1 { stick += 1 }
        else if value.0 == 2 && value.1 >= 2 { eight += 1 }
    }
    
    return [node, cnt[node]!.0 - stick - eight, stick, eight]
}
