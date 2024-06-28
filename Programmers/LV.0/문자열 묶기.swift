//
//  문자열묶기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-06-28.
//

import Foundation

func 문자열묶기() {
    func solution(_ strArr:[String]) -> Int {
        return strArr.reduce(into: [Int: Int]()) {
            $0[$1.count, default: 0] += 1
        }.values.max() as! Int
    }
}
