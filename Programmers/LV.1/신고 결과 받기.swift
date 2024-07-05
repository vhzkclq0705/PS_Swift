//
//  신고 결과 받기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 신고결과받기() {
    func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
        var reportDict = report.reduce(into: [String: Set<String>]()) {
            let r = $1.split(separator: " ").map { String($0) }
            let (a, b) = (r[0], r[1])

            $0[a, default: Set<String>()].insert(b)
        }
        var getReportDict = reportDict.reduce(into: [String: Int]()) { res, dict in
            dict.value.forEach {
                res[$0, default: 0] += 1
            }
        }
        let getBan = Set(getReportDict.filter { $0.value >= k }.keys)

        return id_list.map { id -> Int in
            if let reportSet = reportDict[id] { return reportSet.intersection(getBan).count }
            return 0
        }
    }
}
