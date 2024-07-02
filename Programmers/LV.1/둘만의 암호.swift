//
//  둘만의 암호.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 둘만의암호() {
    func solution(_ s:String, _ skip:String, _ index:Int) -> String {
        let alphabets = Array(97..<123).map { Character(UnicodeScalar($0)!) }.filter { !skip.contains($0) }
        return s.map { String(alphabets[(alphabets.firstIndex(of: $0)! + index) % alphabets.count]) }.joined()
    }
}
