//
//  BinaryTreeInorderTraversal.swift
//  LeetCode
//
//  Created by Marina on 28/05/2022.
//

import Foundation

class BTInOrderTraversal{
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var inOrderArray = [Int]()
        var stack = [TreeNode]()
        var currentNode = root
        while currentNode != nil || stack.count > 0{
            while currentNode != nil{
                stack.append(currentNode!)
                currentNode = currentNode?.left
            }
            currentNode = stack.removeLast()
            if let node = currentNode {
                inOrderArray.append(node.val)
                currentNode = node.right
            }
        }
        return inOrderArray
    }
}
