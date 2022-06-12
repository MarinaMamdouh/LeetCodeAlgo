//
//  FirstBadVersion.swift
//  LeetCode
//
//  Created by Marina on 12/06/2022.
//

import Foundation

class FirstBadVersion{
    var firstBadVersion = 3
    func firstBadVersion(_ n: Int) -> Int {
        var startNumber = 1
        var endNumber = n
        var mid = 0
        while startNumber < endNumber{
            mid =  (startNumber + endNumber)/2
            if isBadVersion(mid){
                endNumber = mid
            }else{
                startNumber = mid + 1
                
            }
        }
        return endNumber
    }
    
    func getFirstBadVersion(currentBadVersion:Int?, n:Int)->Int{
        if let currentBadVersion = currentBadVersion , !isBadVersion(n){
            return currentBadVersion
        }
        
        let mid = n/2
        if isBadVersion(mid){
            let previousNumber = mid - 1
            return (previousNumber > 1) ? getFirstBadVersion(currentBadVersion: mid, n: mid - 1) : (currentBadVersion ?? 0)
        }
        let nextNumber = mid + 1
        if nextNumber > n {
            return (currentBadVersion ?? 0) 
        }
        return getFirstBadVersion(currentBadVersion: currentBadVersion, n: mid)
        
    }
    
    private func isBadVersion(_ num:Int)->Bool{
        if num >= firstBadVersion{
            return true
        }
        return false
    }
}
