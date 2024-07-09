//
//  두 개 뽑아서 더하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ numbers:[Int]) -> [Int] {
    var ans = Set<Int>()
    
    for i in numbers.indices {
        for j in i + 1..<numbers.count {
            ans.insert(numbers[i] + numbers[j])
        }
    }
    
    return ans.sorted()
}
