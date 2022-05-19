//
//  SearchInsertPositionTests.swift
//  LeetCodeTests
//
//  Created by Marina on 19/05/2022.
//

import XCTest
@testable import LeetCode

class SearchInsertPositionTests: XCTestCase {
    var problem = SearchInsertPosition()

    func testExample1() throws {
        let nums = [1,3,5,6]
        let target = 5
        let result = problem.searchInsert(nums, target)
        XCTAssertEqual(result, 2)
    }
    
    func testExample2() throws {
        let nums = [1,3,5,6,7]
        let target = 2
        let result = problem.searchInsert(nums, target)
        XCTAssertEqual(result, 1)
    }
    
    func testExample3() throws {
        let nums = [1,3,5]
        let target = 4
        let result = problem.searchInsert(nums, target)
        XCTAssertEqual(result, 2)
    }


}
