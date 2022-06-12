//
//  SameTree.swift
//  LeetCode
//
//  Created by Marina on 05/06/2022.
//

import Foundation
class SameTree{
    func isSameTreeDivideConquer(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil{
            return true
        }
        if p?.val != q?.val{
            return false
        }
        let leftTreeIsSame = isSameTreeDivideConquer(p?.left, q?.left)
        let rightTreeIsSame = isSameTreeDivideConquer(p?.right, q?.right)
        return leftTreeIsSame && rightTreeIsSame
        
    }
    
    func isSameTreeIterative(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var queue = [TreeNode?]()
        queue.append(p)
        queue.append(q)
        while !queue.isEmpty{
            let firstTree = queue.removeFirst()
            let secondTree =  queue.removeFirst()
            if firstTree == nil && secondTree == nil{
                continue
            }
            
            if firstTree?.val != secondTree?.val{
                return false
            }
            
            queue.append(firstTree?.left)
            queue.append(secondTree?.left)
            queue.append(firstTree?.right)
            queue.append(secondTree?.right)
        }
        
        return true
    }
}
