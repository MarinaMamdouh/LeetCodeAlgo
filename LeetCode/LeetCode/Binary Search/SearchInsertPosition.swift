//
//  SearchInsertPosition.swift
//  LeetCode
//
//  Created by Marina on 19/05/2022.
//

import Foundation

class SearchInsertPosition{
    
    // best solution till now with Binary Search O(log n)
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var index = 0
        if nums.count > 0{
            var ourArray = nums
            var middleIndex = (ourArray.count / 2)
            var firstArray = [Int]()
            var secondArray = [Int]()
            while middleIndex > 0{
                firstArray = Array(ourArray[0..<middleIndex])
                secondArray = Array(ourArray[middleIndex..<ourArray.count])
                if firstArray.first! >= target{
                    // not found or it is the first item
                    // put it first
                    return index
                    
                }
                else if secondArray.last! < target{
                    // not found greater than all items
                    // put it last
                    return middleIndex + secondArray.count
                }
                else if secondArray.first! <= target{
                    // in second array
                    ourArray =  secondArray
                    index += middleIndex
                    
                }else{
                    // in first array
                    ourArray =  firstArray
                    
                }
                middleIndex = (ourArray.count / 2)
            }
            
            if ourArray.count ==  1 {
                if ourArray.first! < target{
                    return index + 1
                }
            }
            
        }
       
        return index
    }
    
    // another solution but slower o(n)
    func searchInsertSolution(_ nums: [Int], _ target: Int) -> Int {
        var index = 0
        while index < nums.count{
            let num = nums[index]
            if num >= target{
                return index
            }
            index += 1
        }
        return index
    }
}
