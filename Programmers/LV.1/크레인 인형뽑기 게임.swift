//
//  크레인 인형뽑기 게임.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var dollIdx = Array(repeating: 0, count: board.count)
    var stk = [Int]()
    var ans = 0

    for i in board.indices {
        for j in board.indices {
            if board[i][j] > 0 {
                dollIdx[j] += 1
            }
        }
    }

    for (_, n) in moves.enumerated() {
        guard dollIdx[n - 1] > 0 else { continue }
        let idx = board.count - dollIdx[n - 1]
        guard board[idx][n - 1] > 0 else { continue }
        stk.append(board[idx][n - 1])
        dollIdx[n - 1] -= 1

        let len = stk.count
        if len >= 2 && stk[len - 1] == stk[len - 2] {
            stk.removeLast(2)
            ans += 2
        }
    }

    return ans
}
