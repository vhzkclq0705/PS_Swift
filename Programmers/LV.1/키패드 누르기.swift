//
//  키패드 누르기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-09.
//

import Foundation

fileprivate func solution(_ numbers:[Int], _ hand:String) -> String {
    func moveFinger(_ n: Int, _ isLeft: Bool) {
        if isLeft {
            ans += "L"
            l = n
        } else {
            ans += "R"
            r = n
        }
    }

    let pad = [
        1: (0, 0), 2: (0, 1), 3: (0, 2),
        4: (1, 0), 5: (1, 1), 6: (1, 2),
        7: (2, 0), 8: (2, 1), 9: (2, 2),
        10: (3, 0), 0: (3, 1), 11: (3, 2)
    ]
    var (l, r) = (10, 11)
    var ans = ""

    numbers.forEach {
        switch $0 {
        case 1, 4, 7: moveFinger($0, true)
        case 3, 6, 9: moveFinger($0, false)
        default:
            let ldis = abs(pad[$0]!.0 - pad[l]!.0) + abs(pad[$0]!.1 - pad[l]!.1)
            let rdis = abs(pad[$0]!.0 - pad[r]!.0) + abs(pad[$0]!.1 - pad[r]!.1)
            if ldis < rdis { moveFinger($0, true) }
            else if ldis > rdis { moveFinger($0, false) }
            else {
                if hand == "left" { moveFinger($0, true) }
                else { moveFinger($0, false) }
            }
        }
    }

    return ans
}
