//
//   FirstBadVersion.swift
//  LeetCode
//
//  Created by Marina on 09/06/2022.
//

import Foundation

class BadVersion{
    func firstBadVersion(_ n: Int) -> Int {
        if n == 1{
            return 1
        }
        var mid = n/2
        var isMidBadVersion =  isBadVersion(mid)
        if isMidBadVersion{
            return firstBadVersion(mid - 1)
        }else{
            return firstBadVersion(mid + 1)
        }
    }
    
    private func isBadVersion(_ version: Int) -> Bool{
        return version < 3 ? return false : return true
                                                            
    }
}
