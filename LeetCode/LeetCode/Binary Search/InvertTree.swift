//
//  InvertTree.swift
//  LeetCode
//
//  Created by Marina on 11/07/2022.
//

import Foundation

class InvertTree {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
            guard let root = root else {
                return nil
            }
            let right = invertTree(root.right)
            let left = invertTree(root.left)
            root.left = right
            root.right = left
            return root
    }
}
