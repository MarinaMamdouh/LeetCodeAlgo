//
//  ValidParentheses.swift
//  LeetCode
//
//  Created by Marina on 16/05/2022.
//

import Foundation

class ValidParentheses{
    func isValid(_ s: String) -> Bool {
        if s.count < 2{
            return false
        }
        var closureDictionary:[Character:Character] = [:]
        closureDictionary["("] = ")"
        closureDictionary["{"] = "}"
        closureDictionary["["] = "]"
        var openedParantheses = ""
        for character in s{
            // character is
            if let _ = closureDictionary[character] {
                openedParantheses += "\(character)"
            }else if let lastCharacter = openedParantheses.last{
                
                if closureDictionary[lastCharacter] == character{
                    openedParantheses.removeLast()
                }else{
                    return false
                }
                
            }else{
                return false
            }
        }
        if openedParantheses.isEmpty{
            return true
        }
        return false
    }
}
