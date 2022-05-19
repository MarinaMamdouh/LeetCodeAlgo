//
//  RemoveDuplicatesSortedArrayTests.swift
//  LeetCodeTests
//
//  Created by Marina on 19/05/2022.
//

import XCTest
@testable import LeetCode
class RemoveDuplicatesSortedArrayTests: XCTestCase {
    var problem = RemoveDuplicatesSortedArray()
    func testSimpleArray() throws {
        var nums = [1,1,2]
        let result = problem.removeDuplicates(&nums)
        XCTAssertEqual(result, nums.count)
        XCTAssertEqual(result, 2)
        XCTAssertEqual(nums, [1,2])
    }
    
    func testArrayWithZeros() throws{
        var nums = [0,0,1,1,1,2,2,3,3,4]
        let result = problem.removeDuplicates(&nums)
        XCTAssertEqual(result, nums.count)
        XCTAssertEqual(result, 5)
        XCTAssertEqual(nums, [0,1,2,3,4])
    }
    
    func testArrayTwoSimilarElements() throws{
        var nums = [1,1]
        let result = problem.removeDuplicates(&nums)
        XCTAssertEqual(result, nums.count)
        XCTAssertEqual(result, 1)
        XCTAssertEqual(nums, [1])
    }
    
    


}
