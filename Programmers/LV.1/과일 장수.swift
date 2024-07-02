//
//  과일 장수.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 과일장수() {
    func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
        let score = score.sorted(by: >)
        return stride(from: m - 1, to: score.count, by: m).reduce(0) {
            $0 + score[$1] * m
        }
    }
}
