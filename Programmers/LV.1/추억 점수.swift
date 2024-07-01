//
//  추억 점수.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 추억점수() {
    func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
        let score: [String: Int] = Dictionary(uniqueKeysWithValues: zip(name, yearning))
        return photo.map { $0.reduce(into: 0) { $0 += score[$1] ?? 0 } }
    }
}
