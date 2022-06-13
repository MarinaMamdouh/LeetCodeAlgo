//
//  BinarySearch.swift
//  LeetCode
//
//  Created by Marina on 12/06/2022.
//

import Foundation

class BinarySearchAlgo{
    
    func searchDivideAndConquer(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 1{
            if nums[0] == target{
                return 0
            }else{
                return -1
            }
        }
        
        let midIndex = nums.count / 2
        let midInt =  nums[midIndex]
        if midInt > target {
            let smallerArray =  Array(nums[0...(midIndex - 1)])
            return searchDivideAndConquer(smallerArray, target)
        }else if midInt < target {
            let biggerArray = Array(nums[midIndex...(nums.count - 1)])
            let retrievedIndex = searchDivideAndConquer(biggerArray, target)
            return retrievedIndex > -1 ? (retrievedIndex + midIndex) : retrievedIndex
        }
        
        return midIndex
    }
    
    func searchIterative(_ nums: [Int], _ target: Int) -> Int {
            var startIndex = 0
            var endIndex = nums.count - 1
        
            while (startIndex < endIndex){
                
                let midIndex = (endIndex + startIndex)/2
                let midInt = nums[midIndex]
                
                if midInt < target{
                    startIndex = midIndex + 1
                }else if midInt > target{
                    endIndex = midIndex - 1
                }else{
                    return midIndex
                }
            }
        
        
        if endIndex < nums.count && endIndex >= 0 {
            if nums[endIndex] == target{
                return endIndex
            }
        }
        return -1
            
    }
}
