//
//  성격 유형 검사하기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 성격유형검사하기() {
    func solution(_ survey:[String], _ choices:[Int]) -> String {
        var dict: [Character: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
        survey.enumerated().forEach { (idx, element) in
            let element = Array(element)
            let (a, b) = (element[0], element[1])

            if choices[idx] > 4 { dict[b]! += choices[idx] - 4 }
            else { dict[a]! += 4 - choices[idx] }
        }

        return "\(dict["R"]! >= dict["T"]! ? "R" : "T")\(dict["C"]! >= dict["F"]! ? "C" : "F")\(dict["J"]! >= dict["M"]! ? "J" : "M")\(dict["A"]! >= dict["N"]! ? "A" : "N")"
    }
}
