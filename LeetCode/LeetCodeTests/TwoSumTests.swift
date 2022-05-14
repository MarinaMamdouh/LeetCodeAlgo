//
//  TwoSumTests.swift
//  LeetCodeTests
//
//  Created by Marina on 14/05/2022.
//

import XCTest
@testable import LeetCode

class TwoSumTests: XCTestCase {
    var problem = TwoSum()

    func testTwoSum() throws {
        let nums = [3,2,4]
        let target = 6
        let result = problem.twoSum(nums, target)
        
        XCTAssertEqual(result, [1,2])
    }

}
