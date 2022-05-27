//
//  MajorityElement.swift
//  LeetCode
//
//  Created by Marina on 27/05/2022.
//

import Foundation

class MajorityElement{
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int:Int]()
        let target = nums.count/2
        for num in nums {
            if let _ = dict[num]{
                dict[num]! += 1
                if dict[num]! > target{
                    return num
                }
            }else{
                dict[num] = 1
            }
        }
        return nums.first!
    }
}
