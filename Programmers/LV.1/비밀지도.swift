//
//  비밀지도.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    return Array(0..<n).map {
        var binary = String(arr1[$0] | arr2[$0], radix: 2)
        binary = String(repeating: "0", count: n - binary.count) + binary
        
        return binary.reduce(into: "") {
            $0 += $1 == "1" ? "#" : " "
        }
    }
}
