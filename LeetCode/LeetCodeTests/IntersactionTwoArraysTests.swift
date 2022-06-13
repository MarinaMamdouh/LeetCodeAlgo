//
//  IntersactionTwoArraysTests.swift
//  LeetCodeTests
//
//  Created by Marina on 13/06/2022.
//

import XCTest
@testable import LeetCode

class IntersactionTwoArraysTests: XCTestCase {
    var problem = IntersactionTwoArrays()

    func testExample1() throws {
        let nums1 = [1,2,2,1]
        let nums2 = [2,2]
        let result = problem.intersection(nums1, nums2)
        XCTAssertEqual(result, [2])
    }
    
    func testExample2() throws {
        let nums1 = [4,9,5]
        let nums2 = [9,4,9,8,4]
        let result = problem.intersection(nums1, nums2)
        XCTAssert(result == [9,4] || result == [4,9])
    }
    
    func testExampleOneEmptyArray() throws {
        let nums1 = [Int]()
        let nums2 = [9,4,9,8,4]
        let result = problem.intersection(nums1, nums2)
        XCTAssert(result == [])
    }
    
    func testTwoArraysHaveOccurencies() throws {
        let nums1 = [2,3,4,1,3,4]
        let nums2 = [3,4,5,6,7,2,2,3,4,4,3]
        let result = problem.intersection(nums1, nums2)
        let expectedResult = [2:0, 3:0,4:0]
        print(result)
        for integer in result {
            if let occurences = expectedResult[integer]{
                if occurences != 0{
                    XCTAssert(false)
                }else{
                    XCTAssert(true)
                }
            }else{
                XCTAssert(false)
            }
        }
    }
    
    func testUnsortedArrays() throws{
        let nums1 = [3,1,2]
        let nums2 = [1,3]
        let result =  problem.intersection(nums1, nums2)
        XCTAssert(result == [3,1] || result == [1,3])
    }


}
