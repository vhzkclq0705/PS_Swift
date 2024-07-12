//
//  오픈채팅방.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-12.
//

import Foundation

fileprivate func solution(_ record:[String]) -> [String] {
    let id = record.reduce(into: [String: String]()) {
        let input = $1.split(separator: " ").map { String($0) }
        if ["Enter", "Change"].contains(input[0]) {
            $0[input[1], default: ""] = input[2]
        }
    }

    return record.reduce(into: [String]()) {
        let input = $1.split(separator: " ").map { String($0) }
        if input[0] == "Enter" { $0.append("\(id[input[1]]!)님이 들어왔습니다.") }
        else if input[0] == "Leave" { $0.append("\(id[input[1]]!)님이 나갔습니다.") }
    }
}
