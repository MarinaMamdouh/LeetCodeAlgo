//
//  MaximumSubArray.swift
//  LeetCode
//
//  Created by Marina on 20/05/2022.
//

import Foundation

class MaximumSubArray{
    // using kadane's algorithm
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxNumber = Int.min
        var currentMax = 0
        for num in nums{
            currentMax += num
            maxNumber =  max(maxNumber, currentMax)
            currentMax = max(currentMax, 0)
            
        }
        return maxNumber
    }

}
