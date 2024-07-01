//
//  전국 대회 선발 고사.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 전국대회선발고사() {
    func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
        let rank = rank.indices
                    .filter { attendance[$0] }
                    .sorted { rank[$0] < rank[$1] }
        
        return rank[0] * 10000 + rank[1] * 100 + rank[2]
    }
}
