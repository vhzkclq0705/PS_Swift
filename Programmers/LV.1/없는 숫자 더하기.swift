//
//  없는 숫자 더하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 없는숫자더하기() {
    func solution(_ numbers:[Int]) -> Int {
        return 45 - numbers.reduce(0, +)
    }
}
