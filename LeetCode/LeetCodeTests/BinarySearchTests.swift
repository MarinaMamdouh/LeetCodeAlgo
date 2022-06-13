//
//  BinarySearchTests.swift
//  LeetCodeTests
//
//  Created by Marina on 19/05/2022.
//

import XCTest
@testable import LeetCode

class BinarySearchTests: XCTestCase {
    var problem = BinarySearchAlgo()
    func testExample1() throws {
        let nums = [1,3,5,6]
        let target = 5
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, 2)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, 2)
    }
    
    func testExample2() throws {
        let nums = [1,3,5,6,7]
        let target = 6
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, 3)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, 3)
    }
    
    func testExample3() throws {
        let nums = [1,2,3,5,6,7]
        let target = 1
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, 0)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, 0)
    }
    
    func testExample4() throws {
        let nums = [1,2,3,5,6,7,8,9]
        let target = 7
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, 5)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, 5)
    }
    
    func testExample5() throws {
        let nums = [1,2,3,5,6,7,8,9]
        let target = 9
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, 7)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, 7)
    }
    
    func testExample6() throws {
        let nums = [2,5]
        let target = 0
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, -1)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, -1)
    }
    
    func testExampleNotFound() throws{
        let nums = [-1,0,3,5,9,12]
        let target = 2
        var result = problem.searchDivideAndConquer(nums, target)
        XCTAssertEqual(result, -1)
        result = problem.searchIterative(nums, target)
        XCTAssertEqual(result, -1)
    }


}
