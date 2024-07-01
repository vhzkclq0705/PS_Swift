//
//  뒤에서 5등까지.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 뒤에서5등까지() {
    func solution(_ num_list:[Int]) -> [Int] {
        return Array(num_list.sorted()[..<5])
    }
}
