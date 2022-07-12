//
//  GenerateParentheses.swift
//  LeetCode
//
//  Created by Marina on 12/07/2022.
//

import Foundation

class GenerateParantheses{
    
    private var list = [String]()
    
    func generateParenthesis(_ n: Int) -> [String] {
      // opencount and closeCount parantethes
      //go to method to recursivly get parantethes
      // return array of strings
      backtrackingParantethesString("" ,0, 0, n)
      return list
    }

    func backtrackingParantethesString(_ parantethes: String,_ openCount: Int, _ closeCount: Int, _ target: Int){
      if openCount == closeCount && openCount == target{
        list.append(parantethes)
          return
      }
      if openCount < target{
        backtrackingParantethesString("\(parantethes)(" , openCount + 1, closeCount, target)
      }
      if openCount > closeCount{
        backtrackingParantethesString("\(parantethes))" , openCount, closeCount + 1, target)
      }
      
    }
}
