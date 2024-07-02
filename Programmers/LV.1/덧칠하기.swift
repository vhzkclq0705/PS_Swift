//
//  덧칠하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 덧칠하기() {
    func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
        var p = 0
        var ans = 0
        
        for i in section where i >= p {
            ans += 1
            p = i + m
        }
        
        return ans
    }
}
