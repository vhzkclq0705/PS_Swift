//
//  콜라츠 추측.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ num:Int) -> Int {
    var num = num
    var cnt = 0

    while num != 1 {
        if cnt == 500 { return -1 }
        num = num % 2 == 0 ? num / 2 : num * 3 + 1
        cnt += 1
    }

    return cnt
}
