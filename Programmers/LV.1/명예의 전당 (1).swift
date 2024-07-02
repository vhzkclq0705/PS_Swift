//
//  명예의 전당 (1).swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 명예의전당1() {
    func solution(_ k:Int, _ score:[Int]) -> [Int] {
        var rank = [Int]()
        var res = [Int]()
        
        for s in score {
            if rank.count < k {
                rank.append(s)
            } else {
                rank.sort(by: >)
                if rank.last! < s {
                    rank.removeLast()
                    rank.append(s)
                }
            }
            
            res.append(rank.min()!)
        }

        return res
    }
}
