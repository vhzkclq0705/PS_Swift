//
//  카드 뭉치.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 카드뭉치() {
    func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
        var cards1 = Array(cards1.reversed())
        var cards2 = Array(cards2.reversed())
        
        for word in goal {
            if !cards1.isEmpty && cards1.last! == word { cards1.removeLast(); continue }
            if !cards2.isEmpty && cards2.last! == word { cards2.removeLast(); continue }
            return "No"
        }
        
        return "Yes"
    }
}
