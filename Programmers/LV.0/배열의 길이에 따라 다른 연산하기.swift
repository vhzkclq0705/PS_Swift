//
//  배열의 길이에 따라 다른 연산하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-06-29.
//

import Foundation

func 배열의길이에따라다른연산하기() {
    func solution(_ arr:[Int], _ n:Int) -> [Int] {
        return arr.enumerated().map { idx, element -> Int in
            if (arr.count % 2 == 0 && idx % 2 == 1) || (arr.count % 2 == 1 && idx % 2 == 0) { return element + n }
            return element
        }
    }
}
