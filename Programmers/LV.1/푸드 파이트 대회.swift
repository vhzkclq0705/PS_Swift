//
//  푸드 파이트 대회.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 푸드파이트대회() {
    func solution(_ food:[Int]) -> String {
        let res = food.enumerated().reduce("") {
            $0 + String(repeating: "\($1.offset)", count: $1.element / 2)
        }
        return res + "0" + res.reversed()
    }
}
