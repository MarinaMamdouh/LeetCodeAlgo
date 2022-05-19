//
//  RemoveElement.swift
//  LeetCode
//
//  Created by Marina on 19/05/2022.
//

import Foundation

class RemoveElement{
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.sorted()
        var index = 0
        var length = nums.count
        while index < length{
            let num = nums[index]
            if num == val{
                nums.remove(at: index)
                length -= 1
            }else{
                index += 1
            }
        }
        return length
        
    }
}
