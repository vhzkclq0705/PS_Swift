//
//  바탕화면 정리.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-02.
//

import Foundation

func 바탕화면정리() {
    func solution(_ wallpaper:[String]) -> [Int] {
        let wallpaper = wallpaper.map { $0.map { String($0) } }
        let (n, m) = (wallpaper.count, wallpaper.first!.count)
        var (minX, minY, maxX, maxY) = (n, m, 0, 0)
        
        for x in 0..<n {
            for y in 0..<m {
                if wallpaper[x][y] == "#" {
                    minX = min(minX, x)
                    minY = min(minY, y)
                    maxX = max(maxX, x + 1)
                    maxY = max(maxY, y + 1)
                }
            }
        }
        
        return [minX, minY, maxX, maxY]
    }
}
