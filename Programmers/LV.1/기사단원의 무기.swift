//
//  기사단원의 무기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 기사단원의무기() {
    func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
        func getCost(_ n: Int) -> Int {
            var cnt = 0
            
            for i in 1...Int(sqrt(Double(n))) {
                if n % i == 0 {
                    if i * i == n { cnt += 1 }
                    else { cnt += 2 }
                }
            }

            return cnt > limit ? power : cnt
        }
        
        return Array(1...number).reduce(0) { $0 + getCost($1) }
    }
}
