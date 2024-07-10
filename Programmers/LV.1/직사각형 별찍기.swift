//
//  직사각형 별찍기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    print([String](repeating: String(repeating: "*", count: n[0]) + "\n", count: n[1]).joined())
}
