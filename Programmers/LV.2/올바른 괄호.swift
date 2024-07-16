//
//  올바른 괄호.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-16.
//

import Foundation

fileprivate func solution(_ s: String) -> Bool {
    var stk = [Character]()
    
    for i in s {
        if i == "(" { stk.append(i) }
        else if i == ")" && !stk.isEmpty { stk.removeLast() }
        else { return false }
    }

    return stk.isEmpty
}
