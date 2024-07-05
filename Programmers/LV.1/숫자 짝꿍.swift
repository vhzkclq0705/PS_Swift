//
//  숫자 짝꿍.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 숫자짝꿍() {
    func solution(_ X:String, _ Y:String) -> String {
        let xdict = X.reduce(into: [Character: Int]()) {
            $0[$1, default: 0] += 1
        }
        let ydict = Y.reduce(into: [Character: Int]()) {
            $0[$1, default: 0] += 1
        }
        let dict = xdict.reduce(into: [Character: Int]()) {
            if let value = ydict[$1.key] { $0[$1.key] = min($1.value, value) }
        }
        
        if dict.isEmpty { return "-1" }
        if dict.count == 1 && dict.first!.key == "0" { return "0" }
        return dict.sorted(by: >).reduce(into: "") { $0 += String(repeating: $1.key, count: $1.value) }
    }
}
