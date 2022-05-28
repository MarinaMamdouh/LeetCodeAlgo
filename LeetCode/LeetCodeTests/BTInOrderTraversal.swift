//
//  BTInOrderTraversal.swift
//  LeetCodeTests
//
//  Created by Marina on 28/05/2022.
//

import XCTest
@testable import LeetCode

class BTInOrderTraversalTests: XCTestCase {
    var problem = BTInOrderTraversal()
    func testExample() throws {
        let tree = TreeNode(1)
        tree.left = TreeNode(2)
        tree.right = TreeNode(3)
        tree.left?.left = TreeNode(4)
        tree.left?.right = TreeNode(5)
        let result = problem.inorderTraversal(tree)
        XCTAssertEqual(result, [4,2,5,1,3])
    }


}
