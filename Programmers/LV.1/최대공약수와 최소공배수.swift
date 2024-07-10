//
//  최대공약수와 최소공배수.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ n:Int, _ m:Int) -> [Int] {
    func gcd(_ n: Int, _ m: Int) -> Int {
        return m == 0 ? n : gcd(m, n % m)
    }
    
    func lcm(_ n: Int, _ m: Int, _ gcd: Int) -> Int {
        return n * m / gcd
    }
    
    let divisor = gcd(max(n, m), min(n, m))
    return [divisor, lcm(n, m, divisor)]
}
