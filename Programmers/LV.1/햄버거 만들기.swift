//
//  햄버거 만들기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 햄버거만들기() {
    func solution(_ ingredient:[Int]) -> Int {
        var stack = [Int]()
        var ans = 0
        
        for i in ingredient {
            stack.append(i)
            let tmp = stack.suffix(4)
            if tmp == [1, 2, 3, 1] {
                stack.removeLast(4)
                ans += 1
            }
        }

        return ans
    }
}
