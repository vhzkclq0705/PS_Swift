//
//  삼총사.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-04.
//

import Foundation

func 삼총사() {
    func solution(_ number:[Int]) -> Int {
        func combination(_ idx: Int, _ arr: [Int]) -> [[Int]] {
            if arr.count == 3 { return [arr] }
            var res = [[Int]]()

            for i in idx..<number.count {
                res += combination(i + 1, arr + [number[i]])
            }
            
            return res
        }
        
        return combination(0, []).reduce(into: 0) {
            $0 += ($1.reduce(0, +) == 0 ? 1 : 0)
        }
    }
}
