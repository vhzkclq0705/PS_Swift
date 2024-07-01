//
//  문자열 정수의 합.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 문자열정수의합() {
    func solution(_ num_str:String) -> Int {
        return num_str.reduce(0) { $0 + Int(String($1))! }
    }
}
