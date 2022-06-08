//
//  SymmetricTree.swift
//  LeetCode
//
//  Created by Marina on 08/06/2022.
//

import Foundation

class SymmetricTree{
    func isSymmetricDivideAndConqure(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        
        return check(node1: root.left, node2: root.right)

    }
    
    private func check(node1:TreeNode?, node2:TreeNode?) -> Bool {
        if node1 == nil && node2 == nil{
            return true
        }
        if node1?.val == node2?.val{
            return check(node1: node1?.left, node2: node2?.right) &&
            check(node1: node1?.right, node2: node2?.left)
        }
        
        return false
    }
    
    
    func isSymmetricIterative(_ root: TreeNode?) -> Bool{

        var queue = [TreeNode?]()
        queue.append(root?.left)
        queue.append(root?.right)
        while(!queue.isEmpty){
            let leftNode = queue.removeFirst()
            let rightNode = queue.removeFirst()
            if leftNode == nil && rightNode == nil{
                continue
            }
            
            if leftNode?.val != rightNode?.val{
                return false
            }
            queue.append(leftNode?.left)
            queue.append(rightNode?.right)
            queue.append(rightNode?.left)
            queue.append(leftNode?.right)
        }
        return true
    }
        
        
}
