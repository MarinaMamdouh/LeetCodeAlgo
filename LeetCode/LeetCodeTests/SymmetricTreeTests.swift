//
//  SymmetricTreeTests.swift
//  LeetCodeTests
//
//  Created by Marina on 08/06/2022.
//

import XCTest
@testable import LeetCode

class SymmetricTreeTests: XCTestCase {
    var problem  =  SymmetricTree()
    func testDivideAndConquer() throws {
        let tree = TreeNode(1)
        tree.left =  TreeNode(2)
        tree.right =  TreeNode(2)
        tree.left?.right = TreeNode(3)
        tree.right?.right =  TreeNode(3)
        let result = problem.isSymmetricDivideAndConqure(tree)
        XCTAssertEqual(result, false)
    }
    
    func testIterative() throws {
        let tree = TreeNode(1)
        tree.left =  TreeNode(2)
        tree.right =  TreeNode(2)
        tree.left?.right = TreeNode(3)
        tree.right?.right =  TreeNode(3)
        let result = problem.isSymmetricIterative(tree)
        XCTAssertEqual(result, false)
    }


}
