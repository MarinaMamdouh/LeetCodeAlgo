//
//  RemoveDuplicatesSortedArray.swift
//  LeetCode
//
//  Created by Marina on 19/05/2022.
//

import Foundation

class RemoveDuplicatesSortedArray{
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var currentLength = nums.count
        var previousNum:Int?
        var index = 0
        while index < currentLength{
            let num = nums[index]
            if num == previousNum{
                nums.remove(at: index)
                currentLength -= 1
            }else{
                index += 1
            }
            previousNum = num
        }
        
        return currentLength
    }
}
