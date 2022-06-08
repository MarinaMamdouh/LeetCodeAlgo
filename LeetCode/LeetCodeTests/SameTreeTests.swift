//
//  SameTreeTests.swift
//  LeetCodeTests
//
//  Created by Marina on 05/06/2022.
//

import XCTest
@testable import LeetCode

class SameTreeTests: XCTestCase {

    var problem = SameTree()
    func testExample() throws {
        let tree1 =  TreeNode(1)
        tree1.left =  TreeNode(2)
        tree1.right = TreeNode(3)
        let tree2 = TreeNode(1)
        tree2.left = TreeNode(2)
        tree2.right =  TreeNode(3)
        
        let result1 = problem.isSameTreeDivideConquer(tree1, tree2)
        XCTAssertEqual(result1, true)
        
        let result2 =  problem.isSameTreeIterative(tree1, tree2)
        XCTAssertEqual(result2, true)
        
    
    }
    
    func testExampleFalse() throws{
        let tree1 =  TreeNode(1)
        tree1.left =  TreeNode(1)
        let tree2 = TreeNode(1)
        tree2.right = TreeNode(1)
        let result1 = problem.isSameTreeDivideConquer(tree1, tree2)
        XCTAssertEqual(result1, false)
        
        let result2 =  problem.isSameTreeIterative(tree1, tree2)
        XCTAssertEqual(result2, false)
    }
    
    func testExample2() throws{
        let tree1 =  TreeNode(1)
        tree1.right =  TreeNode(1)
        let tree2 = TreeNode(1)
        tree2.right = TreeNode(1)
        
        let result1 = problem.isSameTreeDivideConquer(tree1, tree2)
        XCTAssertEqual(result1, true)
        
        let result2 =  problem.isSameTreeIterative(tree1, tree2)
        XCTAssertEqual(result2, true)
        
    }



}
