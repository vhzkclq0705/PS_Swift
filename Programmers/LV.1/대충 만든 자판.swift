//
//  대충 만든 자판.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 대충만든자판() {
    func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
        var keyIndices = keymap.reduce(into: [Character: Int]()) { dict, keys in
            keys.enumerated().forEach { (index, char) in
                if let minIdx = dict[char] { dict[char] = min(minIdx, index) }
                else { dict[char] = index }
            }
        }

        return targets.map { target -> Int in
            var sum = 0
            for c in target {
                if let idx = keyIndices[c] { sum += idx + 1 }
                else { sum = -1; break }
            }
            return sum
        }
    }
}
