//
//  PlusOne.swift
//  LeetCode
//
//  Created by Marina on 20/05/2022.
//

import Foundation

class PlusOne{
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var index = digits.count - 1
        var reminder = 0
        while index >= 0{
            let digit =  digits[index]
            if digit == 9{
                result[index] = 0
                reminder = 1
            }
            else{
                result[index] = digit + 1
                reminder = 0
                break
            }
            index -= 1
        }
        if reminder > 0{
            var finalNumber:[Int] = [reminder]
            finalNumber.append(contentsOf: result)
            return finalNumber
        }
        
        return result
            
    }
}
