//
//  addBinary.swift
//  LeetCode
//
//  Created by Marina on 23/05/2022.
//

import Foundation

class AddBinary{
    func addBinary(_ a: String, _ b: String) -> String {
        let firstNumber = Array(a.reversed())
        let secondNumber =  Array(b.reversed())
        let maxCount = max(firstNumber.count, secondNumber.count)
        var result = ""
        var reminder = 0
        var index = 0
        while index < maxCount{
            var firstDigit = 0
            var secondDigit = 0
            if index >= firstNumber.count{
                secondDigit =  secondNumber[index].wholeNumberValue!
            }else if index >= secondNumber.count{
                firstDigit = firstNumber[index].wholeNumberValue!
            }else{
                firstDigit =  firstNumber[index].wholeNumberValue!
                secondDigit =  secondNumber[index].wholeNumberValue!
            }
            var resultDigit = firstDigit + secondDigit + reminder
            if resultDigit == 2{
                resultDigit = 0
                reminder = 1
            }else if resultDigit == 3{
                resultDigit = 1
                reminder = 1
            }
            else{
                reminder = 0
            }
            result += "\(resultDigit)"
            index += 1
        }
        if reminder > 0{
            result += "\(reminder)"
        }
        return String(result.reversed())
    }
}
