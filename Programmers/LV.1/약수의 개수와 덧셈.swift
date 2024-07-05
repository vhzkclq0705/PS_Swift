//
//  약수의 개수와 덧셈.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 약수의개수와덧셈() {
    func solution(_ left:Int, _ right:Int) -> Int {
        func getDivisorsCount(_ n: Int) -> Int {
            return Array(1...Int(sqrt(Double(n)))).reduce(into: Set<Int>()) {
                if n % $1 == 0 {
                    $0.insert($1)
                    $0.insert(n / $1)
                }
            }.count
        }
        
        return Array(left...right).reduce(into: 0) {
            $0 += getDivisorsCount($1) % 2 == 0 ? $1 : -$1
        }
    }
}
