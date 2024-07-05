//
//  부족한 금액 계산하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 부족한금액계산하기() {
    func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
        return Int64(max(price * (count + 1) * count / 2 - money, 0))
    }
}
