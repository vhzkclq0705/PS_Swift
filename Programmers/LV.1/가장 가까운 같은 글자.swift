//
//  가장 가까운 같은 글자.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 가장가까운같은글자() {
    func solution(_ s:String) -> [Int] {
        var d = [Character: Int]()
        return s.enumerated().map { (idx, char) -> Int in
            guard let preIdx = d[char] else {
                d[char] = idx
                return -1
            }
            d[char] = idx
            return idx - preIdx
        }
    }
}
