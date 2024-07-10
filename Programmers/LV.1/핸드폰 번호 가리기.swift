//
//  핸드폰 번호 가리기.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-10.
//

import Foundation

fileprivate func solution(_ phone_number:String) -> String {
    return String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
}
