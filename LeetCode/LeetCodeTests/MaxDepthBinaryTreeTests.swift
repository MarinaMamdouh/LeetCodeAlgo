//
//  MaxDepthBinaryTreeTests.swift
//  LeetCodeTests
//
//  Created by Marina on 08/06/2022.
//

import XCTest
@testable import LeetCode

class MaxDepthBinaryTreeTests: XCTestCase {
    var problem = MaximumDepthBinaryTree()

    func testExample() throws {
        let tree = TreeNode(3)
        tree.left = TreeNode(9)
        tree.right = TreeNode(20, TreeNode(15), TreeNode(7))
        
        let result  =  problem.maxDepthDivideConquer(tree)
        XCTAssertEqual(result, 3)
        
        let result2  =  problem.maxDepthIterative(tree)
        XCTAssertEqual(result2, 3)
        
    }
    
    func testExample4() throws {
        let tree = TreeNode(1)
        tree.left =  TreeNode(2, TreeNode(4), TreeNode(5))
        tree.right = TreeNode(3, TreeNode(6), TreeNode(7))
        
        let result  =  problem.maxDepthDivideConquer(tree)
        XCTAssertEqual(result, 3)
        
        let result2  =  problem.maxDepthIterative(tree)
        XCTAssertEqual(result2, 3)
        
    }
    
    func testExample2() throws{
        let tree = TreeNode(1, nil, TreeNode(2))
        
        let result =  problem.maxDepthDivideConquer(tree)
        XCTAssertEqual(result, 2)
        
        let result2  =  problem.maxDepthIterative(tree)
        XCTAssertEqual(result2, 2)
    }
    
    func testExample3() throws{
        let tree = TreeNode(1)
        tree.right = TreeNode(2, TreeNode(3, TreeNode(4), nil), nil)
        
        let result =  problem.maxDepthDivideConquer(tree)
        XCTAssertEqual(result, 4)
        
        let result2  =  problem.maxDepthIterative(tree)
        XCTAssertEqual(result2, 4)
    }


}
