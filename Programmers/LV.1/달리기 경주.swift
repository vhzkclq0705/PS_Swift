//
//  달리기 경주.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 달리기경주() {
    func solution(_ players:[String], _ callings:[String]) -> [String] {
        var ans = players
        var rank = players.enumerated().reduce(into: [String: Int]()) { $0[$1.element] = $1.offset }
        
        callings.forEach {
            let num = rank[$0]!
            let prePlayer = ans[num]
            let nextPlayer = ans[num - 1]
            
            ans.swapAt(num, num - 1)
            rank[prePlayer]! -= 1
            rank[nextPlayer]! += 1
        }

        return ans
    }
}
