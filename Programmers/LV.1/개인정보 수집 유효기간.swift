//
//  개인정보 수집 유효기간.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 개인정보수집유효기간() {
    func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
        func convert(_ date: String) -> Int {
            let date = date.split(separator: ".")
            return Int(date[0])! * 12 * 28 + Int(date[1])! * 28 + Int(date[2])!
        }
        
        let terms = terms.reduce(into: [String: Int]()) {
            let term = $1.split(separator: " ")
            $0[String(term[0])] = Int(term[1])! * 28
        }
        
        return privacies.enumerated().filter {
            let privacy = $0.element.split(separator: " ").map { String($0) }
            return convert(today) >= convert(privacy[0]) + terms[privacy[1]]!
        }.map { $0.offset + 1 }
    }
}
