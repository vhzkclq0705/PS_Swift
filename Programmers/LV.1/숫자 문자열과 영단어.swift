//
//  숫자 문자열과 영단어.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 숫자문자열과영단어() {
    func solution(_ s:String) -> Int {
        return Int(s.replacingOccurrences(of: "zero", with: "0")
            .replacingOccurrences(of: "one", with: "1")
            .replacingOccurrences(of: "two", with: "2")
            .replacingOccurrences(of: "three", with: "3")
            .replacingOccurrences(of: "four", with: "4")
            .replacingOccurrences(of: "five", with: "5")
            .replacingOccurrences(of: "six", with: "6")
            .replacingOccurrences(of: "seven", with: "7")
            .replacingOccurrences(of: "eight", with: "8")
            .replacingOccurrences(of: "nine", with: "9"))!
    }
}
