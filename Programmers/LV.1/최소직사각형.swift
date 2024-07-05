//
//  최소직사각형.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-05.
//

import Foundation

func 최소직사각형() {
    func solution(_ sizes:[[Int]]) -> Int {
        return sizes.reduce(into: [1, 1]) {
            let size = $1.sorted()
            $0 = [max($0[0], size[0]), max($0[1], size[1])]
        }.reduce(1, *)
    }
}
