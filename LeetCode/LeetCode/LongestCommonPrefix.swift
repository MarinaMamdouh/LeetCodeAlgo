//
//  LongestCommonPrefix.swift
//  LeetCode
//
//  Created by Marina on 14/05/2022.
//

import Foundation

class LongestCommonPrefix{
    func longestCommonPrefix(_ strs: [String]) -> String {
        var allStrings = strs
        // check if array has one string so we can return it
        if allStrings.count < 2{
            return allStrings.first!
        }
        let shortestStringIndex = getShortestStringIndex(in: strs)
        let shortestString = allStrings.remove(at: shortestStringIndex)
        if allStringsContains(shortestString, strings: allStrings){
            return shortestString
        }
        let otherStringsArray = allStrings
        var longestCommonPrefix = ""
        
        for character in shortestString{
            let prefix = "\(longestCommonPrefix)\(character)"
            let isInAllStrings = allStringsContains(prefix, strings: otherStringsArray)
            if isInAllStrings {
                longestCommonPrefix.append(character)
            }else{
                break
            }
        }
        return longestCommonPrefix
    }
    

    
    private func allStringsContains(_ prefix:String , strings:[String])->Bool{
        
        for string in strings {
            if string.count < prefix.count{
                return false
            }
            var stringPrefix = ""
            if !string.isEmpty{
                let prefixEndIndex = (prefix.isEmpty ? 0 : prefix.count - 1)
                stringPrefix = String(Array(string)[0...prefixEndIndex])
            }
            if stringPrefix != prefix{
                return false
            }
        }
        
        return true
    }
    
        private func getShortestStringIndex(in strings:[String]) -> Int{
            var minLength = strings.first!.count
            var minStringIndex = 0
            var index = 0
            for str in strings{
                if str.count < minLength {
                    minLength = str.count
                    minStringIndex = index
                }
    
                index += 1
            }
    
            return minStringIndex
        }
    
}
