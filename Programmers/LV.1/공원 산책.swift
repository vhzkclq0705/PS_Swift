//
//  공원 산책.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-01.
//

import Foundation

func 공원산책() {
    func solution(_ park:[String], _ routes:[String]) -> [Int] {
        let park = park.map { $0.map { String($0) } }
        let (n, m) = (park.count, park.first!.count)
        var (x, y) = (0, 0)
        
        for i in 0..<n {
            for j in 0..<m {
                if park[i][j] == "S" { (x, y) = (i, j); break }
            }
        }

        for route in routes {
            let route = route.split(separator: " ").map { String($0) }
            let (d, num) = (route[0], Int(route[1])!)
            var flag = true
            
            switch d {
            case "N":
                if x - num < 0 { continue }
                for i in (x - num)..<x {
                    if park[i][y] == "X" { flag = false; break }
                }
                if flag { x -= num }
            case "S":
                if x + num >= n { continue }
                for i in (x + 1)...(x + num) {
                    if park[i][y] == "X" { flag = false; break }
                }
                if flag { x += num }
            case "W":
                if y - num < 0 { continue }
                for i in (y - num)..<y {
                    if park[x][i] == "X" { flag = false; break }
                }
                if flag { y -= num }
            default:
                if y + num >= m { continue }
                for i in (y + 1)...(y + num) {
                    if park[x][i] == "X" { flag = false; break }
                }
                if flag { y += num }
            }
        }
        
        return [x, y]
    }
}
