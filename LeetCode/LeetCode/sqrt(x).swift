//
//  sqrt(x).swift
//  LeetCode
//
//  Created by Marina on 23/05/2022.
//

import Foundation

class SquareRoot{
    func mySqrt(_ x: Int) -> Int {
        if x < 2{
            return x
        }
        var start = 1
        var end = x/2
        var mid = 0
        var double = 0
        var previousMid = 0
        while start <= end{
            mid =  (start + (end - start) / 2);
            double = mid * mid
            if double == x {
                return mid
            }
            if double < x {
                previousMid = mid
                start = mid + 1
            }else{
                end =  mid - 1
            }
        }
        
        return previousMid
    }
}
