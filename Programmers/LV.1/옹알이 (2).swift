//
//  옹알이 (2).swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 옹알이2() {
    func solution(_ babbling:[String]) -> Int {
        var ans = 0
        
        for bab in babbling {
            let tmp = bab.replacingOccurrences(of: "aya", with: "0")
                        .replacingOccurrences(of: "ye", with: "1")
                        .replacingOccurrences(of: "woo", with: "2")
                        .replacingOccurrences(of: "ma", with: "3")
            if Int(tmp) == nil || tmp.contains("00") || tmp.contains("11") || tmp.contains("22") || tmp.contains("33") { continue }
            ans += 1
        }
        
        return ans
    }
}
