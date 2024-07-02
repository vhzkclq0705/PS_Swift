//
//  크기가 작은 부분문자열.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 크기가작은부분문자열() {
    func solution(_ t:String, _ p:String) -> Int {
        return Array(0...t.count - p.count).reduce(0) {
            return Int(String(Array(t)[$1..<$1 + p.count]))! <= Int(p)! ?  $0 + 1 : $0
        }
    }
}
