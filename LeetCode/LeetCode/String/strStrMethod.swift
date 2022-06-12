//
//  strStrMethod.swift
//  LeetCode
//
//  Created by Marina on 19/05/2022.
//

import Foundation

extension String{
    static func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty{
            return 0
        }
        let haystackStringArray = Array(haystack)
        
        for var i in haystackStringArray.indices{
            let remaing = haystackStringArray.count - i
            if remaing < needle.count{
                return -1
            }
            let word = String(haystackStringArray[i..<(i+needle.count)])
            if word == needle{
                return i
            }
            i += 1
            
        }
        

        return -1
    }
}
