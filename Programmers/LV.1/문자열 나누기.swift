//
//  문자열 나누기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 문자열나누기() {
    func solution(_ s:String) -> Int {
        let s = Array(s)
        var char = s.first!
        var same = 0
        var diff = 0
        var res = 0
        var flag = true
        
        for c in s {
            if flag {
                flag = false
                char = c
            }
            
            if c == char { same += 1}
            else { diff += 1 }
            
            if same == diff {
                res += 1
                (same, diff) = (0, 0)
                flag = true
            }
        }
        
        return flag ? res : res + 1
    }
}
