//
//  SameTree.swift
//  LeetCode
//
//  Created by Marina on 05/06/2022.
//

import Foundation
class SameTree{
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil{
            return true
        }
        if p?.val != q?.val{
            return false
        }
        let leftTreeIsSame = isSameTree(p?.left, q?.left)
        let rightTreeIsSame = isSameTree(p?.right, q?.right)
        return leftTreeIsSame && rightTreeIsSame
        
    }
}
