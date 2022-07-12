//
//  MergeIntervals.swift
//  LeetCode
//
//  Created by Marina on 11/07/2022.
//

import Foundation
class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        // sort the array depending on the start
        let sortedIntervals = intervals.sorted {
            $0[0] < $1[0]
        }
        
        // loop on the intervals
        var arrayIndex = 1
        var lastOverlappedIntervalIndex = 0
        var finalIntervals = [sortedIntervals[0]]
        
        while arrayIndex < sortedIntervals.count{
            let interval = sortedIntervals[arrayIndex]
            let lastOverlappedInterval = finalIntervals.last!
            if interval[0] <= lastOverlappedInterval[1]{
                let finalIntervalStart = min(interval[0], lastOverlappedInterval[0])
                let finalIntervalEnd = max(interval[1], lastOverlappedInterval[1])
                finalIntervals[lastOverlappedIntervalIndex] = [finalIntervalStart, finalIntervalEnd]
            }else{
                finalIntervals.append(interval)
                lastOverlappedIntervalIndex += 1
            }
            
            arrayIndex += 1
            
        }
        
        return finalIntervals
        
    }
}
