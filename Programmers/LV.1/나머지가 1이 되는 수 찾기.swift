//
//  나머지가 1이 되는 수 찾기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 나머지가1이되는수찾기() {
    func solution(_ n:Int) -> Int {
        for i in 2..<n {
            if n % i == 1 { return i }
        }
        return 0
    }
}
