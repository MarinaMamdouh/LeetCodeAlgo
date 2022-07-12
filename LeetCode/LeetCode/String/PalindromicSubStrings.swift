//
//  PalindromicSubStrings.swift
//  LeetCode
//
//  Created by Marina on 11/07/2022.
//

import Foundation

class PalindromicSubStrings{
    func countSubstrings(_ s: String) -> Int {
      let sArray = Array(s)
      var count = 0
      for (index, _) in sArray.enumerated() {
        count += getPalindormeCount(from: sArray , at: index, isOdd:true)
        count += getPalindormeCount(from: sArray , at: index, isOdd:false)
      }
      return count
    }

    private func getPalindormeCount(from charArray: [Character] , at index: Int, isOdd:Bool) -> Int{
      var left = index
      var right = isOdd ? index : index + 1
      var count = 0
      while left <= right &&  left >= 0 && right < charArray.count && charArray[left] ==  charArray[right] {
        count += 1
        left -= 1
        right += 1
      }
      return count
    }
}
