//
//  IntersactionTwoArrays.swift
//  LeetCode
//
//  Created by Marina on 13/06/2022.
//

import Foundation

class IntersactionTwoArrays{
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dictionary = [Int:Int]()
        if nums1.isEmpty || nums2.isEmpty{
            return []
        }
        var smallerArray = [Int]()
        var biggerArray = [Int]()
        if nums1.count > nums2.count{
            smallerArray = nums2
            biggerArray = nums1.sorted()
        }else{
            smallerArray = nums1
            biggerArray = nums2.sorted()
        }
        
        for integer in smallerArray{
            let isFound = search(in: biggerArray, for: integer)
            if isFound{
                if dictionary[integer] == nil{
                    dictionary[integer] = 0
                }
            }
        }
        
        return Array(dictionary.keys)
    }
    
    private func search(in nums:[Int], for target:Int) -> Bool{
        if nums.count == 1{
            if nums[0] == target{
                return true
            }else{
                return false
            }
        }
        
        let midIndex = nums.count / 2
        let midInt =  nums[midIndex]
        if midInt > target {
            let smallerArray =  Array(nums[0...(midIndex - 1)])
            return search(in:smallerArray, for:target)
        }else if midInt < target {
            let biggerArray = Array(nums[midIndex...(nums.count - 1)])
            return search(in:biggerArray, for:target)
        }
        
        return true
    }
}
