//
//  LengthLastWord.swift
//  LeetCode
//
//  Created by Marina on 20/05/2022.
//

import Foundation

class LengthLastWord{
    
    func lengthOfLastWord(_ s: String) -> Int {
        var ourString  = s
        while ourString.last == " " {
            _ = ourString.removeLast()
        }
        var length = 0
        for char in ourString.reversed(){
            if char == " " {
                break
            }
            length += 1
        }
        return length
    }
    
    func lengthOfLastWord2(_ s: String) -> Int {
        var ourString  = s
        while ourString.last == " " {
            _ = ourString.removeLast()
        }
        let strings = ourString.split(separator: " ")
        return strings.last?.count ?? 0
    }
    
    func lengthOfLastWord1(_ s: String) -> Int {
        var length = 0
        let ourString  = Array(s)
        var index = s.count - 1
        while index >= 0{
            let character = ourString[index]
            if character == " "{
                if length > 0{
                    return length
                }
            }else{
                length += 1
            }
            index -= 1
        }
        return length
    }
    
    
}
