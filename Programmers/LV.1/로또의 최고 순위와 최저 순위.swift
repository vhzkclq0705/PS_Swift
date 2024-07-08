//
//  로또의 최고 순위와 최저 순위.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-08.
//

import Foundation

fileprivate func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    if lottos.reduce(0, +) == 0 { return [1, 6] }
    
    let same = Set(win_nums).intersection(Set(lottos)).count
    let zero = lottos.filter { $0 == 0 }.count
    
    if same + zero <= 1 { return [6, 6] }
    return [7 - same - zero, 7 - same]
}
