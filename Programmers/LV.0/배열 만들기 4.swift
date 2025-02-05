//
//  배열 만들기 4.swift
//  Algorithm
//
//  Created by 권오준 on 2024-06-20.
//

import Foundation

func 배열만들기4() {
    func solution(_ arr:[Int]) -> [Int] {
        var stk = [Int]()
        var i = 0
        
        while i < arr.count {
            if stk.isEmpty {
                stk.append(arr[i])
                i += 1
            } else {
                if stk.last! < arr[i] {
                    stk.append(arr[i])
                    i += 1
                } else {
                    stk.removeLast()
                }
            }
        }
        
        return stk
    }
}
