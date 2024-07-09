//
//  K번째수.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map {
        array[$0[0] - 1...$0[1] - 1].sorted()[$0[2] - 1]
    }
}
