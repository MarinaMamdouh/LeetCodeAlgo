//
//  MaximumDepthBinaryTree.swift
//  LeetCode
//
//  Created by Marina on 08/06/2022.
//

import Foundation

class MaximumDepthBinaryTree{
    func maxDepthDivideConquer(_ root: TreeNode?) -> Int {
        if root == nil{
            return 0
        }
        let leftTreeDepth = maxDepthDivideConquer(root?.left)
        let rightTreeDepth = maxDepthDivideConquer(root?.right)
        
        return 1 + max(leftTreeDepth , rightTreeDepth)
            
    }
    
    func maxDepthIterative(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var levelNodescount = 0
        var queue = [TreeNode?]()
        var noOfLevels = 0
        var endOfTree = false
        queue.append(root)
        
        while !endOfTree {
            // get the number of nodes of next level(in the queue)
            levelNodescount = queue.count
            // if there is no nodes in next level so the tree is ended
            if queue.isEmpty{
                endOfTree = true
            }
            // there are node(s) so there is another level in the tree
            else{
                noOfLevels += 1
            }
            // start fetching the level
            // get all nodes in that level and put it in the queue
            // and remove the nodes of previous level from the queue
            while levelNodescount > 0{
                let node = queue.removeFirst()
                if let left = node?.left{
                    queue.append(left)
                }
                if let right = node?.right{
                    queue.append(right)
                }
                levelNodescount -= 1
            }
        }
        return noOfLevels
            
    }
}
