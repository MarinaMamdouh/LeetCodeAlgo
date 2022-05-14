//
//  TwoSum.swift
//  LeetCode
//
//  Created by Marina on 14/05/2022.
//

import Foundation

class TwoSum{
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        // potential sum dictionary
        var potentialNumbersDict = [Int:Int]()
        var index = 0
        // loop on nums get numbers less than target add them in the dictionary and array
        for n in nums{
            // calculate what number we need to reach target
            let reminder = target - n
            if let secondNumberIndex = potentialNumbersDict[reminder]
            {
                let firstNumberIndex = index
                return [ firstNumberIndex, secondNumberIndex].sorted()
            }
            // add current number in the potential dictionary
            potentialNumbersDict[n] = index
            index += 1
        }
        
        return []
        
    }
}
