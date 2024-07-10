//
//  소수 만들기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ nums:[Int]) -> Int {
    func isPrime(_ n: Int) -> Bool {
        if n == 1 { return false }
        
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 { return false }
        }
        return true
    }
    
    func combinations(_ idx: Int, _ arr: [Int]) -> [[Int]] {
        if arr.count == 3 { return [arr] }
        var res = [[Int]]()
        
        for i in idx..<nums.count {
            res += combinations(i + 1, arr + [nums[i]])
        }
        return res
    }
    
    return combinations(0, []).reduce(into: 0) {
        $0 += isPrime($1.reduce(0, +)) ? 1 : 0
    }
}
