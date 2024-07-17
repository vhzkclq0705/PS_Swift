//
//  다리를 지나는 트럭.swift
//  PS_Swift
//
//  Created by 권오준 on 2024-07-17.
//

import Foundation

fileprivate struct Queue {
    var inbox: [Int]
    var outbox: [Int]
    
    var isEmpty: Bool {
        return inbox.isEmpty && outbox.isEmpty
    }
    
    var count: Int {
        return inbox.count + outbox.count
    }
    
    init(_ arr: [Int]) {
        self.inbox = arr
        self.outbox = []
    }
    
    mutating func enqueue(_ n: Int) {
        inbox.append(n)
    }
    
    mutating func dequeue() -> Int {
        if outbox.isEmpty {
            outbox = inbox.reversed()
            inbox.removeAll()
        }
        return outbox.removeLast()
    }
}

fileprivate func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var trucks = Array(truck_weights.reversed())
    var bridge = Queue([Int](repeating: 0, count: bridge_length))
    var total = 0
    var ans = 0
    
    while !bridge.isEmpty {
        total -= bridge.dequeue()
        ans += 1
        
        if bridge.count < bridge_length {
            if let truck = trucks.last {
                if truck + total <= weight {
                    total += trucks.removeLast()
                    bridge.enqueue(truck)
                } else {
                    bridge.enqueue(0)
                }
            }
        }
    }
    
    return ans
}
