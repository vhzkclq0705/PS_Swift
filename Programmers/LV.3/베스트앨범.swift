//
//  베스트앨범.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-15.
//

import Foundation

fileprivate struct Genre {
    var total: Int
    var albums: [Album]
}

fileprivate struct Album {
    let idx: Int
    let plays: Int
}

fileprivate func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    return genres.enumerated().reduce(into: [String: Genre]()) {
        $0[$1.element, default: Genre(total: 0, albums: [])].total += plays[$1.offset]
        $0[$1.element]!.albums.append(Album(idx: $1.offset, plays: plays[$1.offset]))
    }.sorted(by: {
        $0.value.total > $1.value.total
    }).flatMap {
        $0.value.albums.sorted(by: { $0.plays > $1.plays }).prefix(2)
    }.map {
        $0.idx
    }
}
