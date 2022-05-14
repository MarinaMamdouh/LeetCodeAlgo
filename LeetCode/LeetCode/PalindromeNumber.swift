//
//  PalindromeNumber.swift
//  LeetCode
//
//  Created by Marina on 14/05/2022.
//

import Foundation
class PalindromeNumber{
    func isPalindrome(_ x: Int) -> Bool {
        let numberString = "\(x)"
        // if number is only one digit
        if numberString.count < 2{
            return true
        }
        let reversedNumberString = Array(numberString.reversed())
        var index = 0
        for character in numberString{
            if character != reversedNumberString[index]{
                return false
            }
            index += 1
        }
           return true
    }
}
