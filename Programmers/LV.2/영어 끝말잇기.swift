//
//  영어 끝말잇기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-11.
//

import Foundation

fileprivate func solution(_ n:Int, _ words:[String]) -> [Int] {
    var check = Set<String>()

    for (idx, word) in words.enumerated() {
        if (idx > 0 && words[idx - 1].last! != word.first!) || check.contains(word) {
            return [idx % n + 1, idx / n + 1]
        }
        else if !check.contains(word) {
            check.insert(word)
        }
    }

    return [0, 0]
}
