//
//  가장 많이 받은 선물.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 가장많이받은선물() {
    func solution(_ friends:[String], _ gifts:[String]) -> Int {
        let n = friends.count
        let names = friends.enumerated().reduce(into: [String: Int]()) { $0[$1.element] = $1.offset }
        var giftCount = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
        var giftIndex = [Int](repeating: 0, count: n)
        var ans = [Int](repeating: 0, count: n)
        
        gifts.forEach {
            let name = $0.split(separator: " ").map { names[String($0)]! }
            giftCount[name[0]][name[1]] += 1
            giftIndex[name[0]] += 1
            giftIndex[name[1]] -= 1
        }

        for i in friends.indices {
            for j in friends.indices where j > i {
                if giftCount[i][j] < giftCount[j][i] { ans[j] += 1 }
                else if giftCount[i][j] > giftCount[j][i] { ans[i] += 1 }
                else {
                    if giftIndex[i] > giftIndex[j] { ans[i] += 1 }
                    else if giftIndex[i] < giftIndex[j] { ans[j] += 1 }
                }
            }
        }
        
        return ans.max()!
    }
}
