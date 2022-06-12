//
//  Pascal's Triangle.swift
//  LeetCode
//
//  Created by Marina on 28/05/2022.
//

import Foundation

class PascalTriangle{
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[1]]
        var level = 1
        while level < numRows{
            var array = [Int]()
            let numberOfElements = level + 1
            var arrayIndex = 0
            while arrayIndex < numberOfElements{
                let previousArray = triangle.last!
                let firstElement = (arrayIndex == 0 ? 0 : previousArray[arrayIndex - 1])
                let secondElement = (arrayIndex == numberOfElements - 1 ? 0 : previousArray[arrayIndex])
                let generatedElement = firstElement + secondElement
                array.append(generatedElement)
                arrayIndex += 1
                                     
            }
            triangle.append(array)
            level += 1
        }
        
        return triangle
            
    }
}
