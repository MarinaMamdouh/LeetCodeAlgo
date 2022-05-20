//
//  MaxSubArrayTests.swift
//  LeetCodeTests
//
//  Created by Marina on 20/05/2022.
//

import XCTest
@testable import LeetCode

class MaxSubArrayTests: XCTestCase {
    var problem  =  MaximumSubArray()
    
    func testExample() throws {
        let nums  = [-2,1,-3,4,-1,2,1,-5,4]
        let result = problem.maxSubArray(nums)
        XCTAssertEqual(result, 6)
    }
    
    func testExample2() throws{
        let nums  = [5,4,-1,7,8]
        let result = problem.maxSubArray(nums)
        XCTAssertEqual(result, 23)
    }

}
