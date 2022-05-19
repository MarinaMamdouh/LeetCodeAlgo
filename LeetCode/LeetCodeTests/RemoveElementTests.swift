//
//  RemoveElementTests.swift
//  LeetCodeTests
//
//  Created by Marina on 19/05/2022.
//

import XCTest
@testable import LeetCode

class RemoveElementTests: XCTestCase {
    var problem = RemoveElement()
    
    func testSimpleArray() throws {
        var nums = [3,2,2,3]
        let result = problem.removeElement(&nums, 3)
        XCTAssertEqual(result, nums.count)
        XCTAssertEqual(result, 2)
        XCTAssertEqual(nums, [2,2])
    }
    
    func testComplexArray() throws{
        var nums = [0,1,2,2,3,0,4,2]
        let result = problem.removeElement(&nums, 2)
        XCTAssertEqual(result, nums.count)
        XCTAssertEqual(result, 5)
        XCTAssertEqual(nums, [0,0,1,3,4])
    }
    
    


}
