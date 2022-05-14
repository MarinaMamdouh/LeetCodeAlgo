//
//  MultiplyStrings.swift
//  LeetCode
//
//  Created by Marina on 13/05/2022.
//

import Foundation

class MultiplyStrings{
    
    func multiply(_ num1: String, _ num2: String) -> String {
        var resultNumber:UInt64 = 0
        let num1Partioned = getNumPartionedArray(num1)
        let num2Partioned = getNumPartionedArray(num2)
        if isZero(num1) || isZero(num2){
            return "0"
        }
        if num1Partioned.count > num2Partioned.count{
            for item1 in num1Partioned{
                for item2 in num2Partioned{
                    let result = UInt64(item1) * UInt64(item2)
                    resultNumber += result
                }
            }
        }else{
            for item1 in num2Partioned{
                for item2 in num1Partioned{
                    let result = UInt64(item1) * UInt64(item2)
                    resultNumber += result
                }
            }
        }
        
        return "\(resultNumber)"
        
    }
    
    private func multiplyTable(_ digit1:Int, digit2:Int)->Int{
        return digit1 * digit2
    }
    
    
    private func getNumPartionedArray(_ num:String)->[Int]{
        var numPartioned = [Int]()
        let reversedNumber = num.reversed()
        var index = 0
        for num in reversedNumber{
            let intNum = num.wholeNumberValue!
            let numPosition = getNumber(of: intNum, dependsOn: index)
            numPartioned.append(numPosition)
            index += 1
            
        }
        return numPartioned
    }
    
    private func getNumber(of num:Int, dependsOn index:Int)->Int{
        var i = 0
        var result = num
        while i < index{
            result *= 10
            i += 1
        }
        return result
    }
    
    private func isZero(_ num:String)->Bool{
        let numInt = Int(num) ?? 0
        if numInt == 0{
            return true
        }
        return false
    }
}
