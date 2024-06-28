//
//  배열 비교하기.swift
//  Algorithm
//
//  Created by 권오준 on 2024-06-28.
//

import Foundation

func 배열비교하기() {
    func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
        if arr1.count < arr2.count { return -1 }
        if arr1.count > arr2.count { return 1 }
        
        let sumArr1 = arr1.reduce(0, +)
        let sumArr2 = arr2.reduce(0, +)
        if sumArr1 < sumArr2 { return -1 }
        if sumArr1 > sumArr2 { return 1 }
        
        return 0
    }
}
