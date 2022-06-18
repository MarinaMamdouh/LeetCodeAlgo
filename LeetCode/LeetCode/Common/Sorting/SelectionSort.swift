//
//  SelectionSort.swift
//  LeetCode
//
//  Created by Marina on 18/06/2022.
//

import Foundation

class SelectionSort: SortDelegate{
    func sort(array: [Int]) -> [Int] {
        var mutatingCopyOfArray = array
        var sortedArray = [Int]()
        while (mutatingCopyOfArray.count > 0){
            let smallestIndex = getSmallestItemIndex(from: mutatingCopyOfArray)
            let smallest = mutatingCopyOfArray.remove(at: smallestIndex)
            sortedArray.append(smallest)
        }
        return sortedArray
    }
    
    private func getSmallestItemIndex(from array:[Int]) -> Int{
        var index = 0
        var smallest = Int.max
        var smallestIndex = 0
        for item in array {
            if item < smallest{
                smallest = item
                smallestIndex = index
            }
            index += 1
        }
        return smallestIndex
        
    }
    
}
