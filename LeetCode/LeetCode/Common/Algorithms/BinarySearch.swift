//
//  BinarySearch.swift
//  LeetCode
//
//  Created by Marina on 19/05/2022.
//

import Foundation

class Algorithms{
    // get index of target if found in nums
    static func binarySearch(_ nums:[Int], _ target:Int) -> Int{
        var index = 0
        if nums.count > 0{
            var ourArray = nums
            var middleIndex = (ourArray.count / 2)
            var firstArray = [Int]()
            var secondArray = [Int]()
            while middleIndex > 0{
                firstArray = Array(ourArray[0..<middleIndex])
                secondArray = Array(ourArray[middleIndex..<ourArray.count])
                if firstArray.first! > target{
                    // not found
                    return -1
                    
                }
                else if secondArray.last! < target{
                    // not found greater than all items
                    return -1
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
                if ourArray.first! == target{
                    return index
                }else{
                    return -1
                }
            }
            
        }
       
        return -1
    }
}
