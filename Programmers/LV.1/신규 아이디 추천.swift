//
//  신규 아이디 추천.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-08.
//

import Foundation

fileprivate func solution(_ new_id:String) -> String {
    var ans = new_id
            .lowercased()
            .filter { $0.isNumber || $0.isLowercase || ["-", "_", "."].contains($0) }
    
    while ans.range(of: "..") != nil {
        ans = ans.replacingOccurrences(of: "..", with: ".")
    }
    
    if !ans.isEmpty && ans.first! == "." { ans.removeFirst() }
    if !ans.isEmpty && ans.last! == "." { ans.removeLast() }
    if ans.isEmpty { ans += "a" }
    ans = String(ans.prefix(15))
    if ans.last! == "." { ans.removeLast() }
    if ans.count < 3 { ans += String(repeating: ans.last!, count: 3 - ans.count) }
      
    return ans
}
