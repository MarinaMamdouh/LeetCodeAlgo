//
//  ClimbingStairs.swift
//  LeetCode
//
//  Created by Marina on 27/05/2022.
//

import Foundation
class ClimbingStairs{
    func climbStairs(_ n: Int) -> Int {
        if n < 4{
            return n
        }
        var prevPrev = 2
        var prev = 3
        var count = 4
        while count != n{
            let newPrev = prevPrev + prev
            prevPrev = prev
            prev = newPrev
            count += 1
        }
        return prevPrev + prev
    }
}
