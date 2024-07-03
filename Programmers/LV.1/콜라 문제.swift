//
//  콜라 문제.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-04.
//

import Foundation

func 콜라문제() {
    func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
        var coke = n
        var ans = 0

        while coke >= a {
            let (newCoke, empty) = coke.quotientAndRemainder(dividingBy: a)
            ans += newCoke * b
            coke = empty + newCoke * b
        }

        return ans
    }
}
