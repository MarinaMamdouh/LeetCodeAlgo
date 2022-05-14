//
//  LongestCommonPrefixTests.swift
//  LeetCodeTests
//
//  Created by Marina on 14/05/2022.
//

import XCTest
@testable import LeetCode

class LongestCommonPrefixTests: XCTestCase {
    var problem = LongestCommonPrefix()
    func testExistingCommonPrefix() throws {
        let strings = ["flower","flow","flight"]
        let result = problem.longestCommonPrefix(strings)
        XCTAssertEqual(result, "fl")
    }
    
    func testEmptyCommonPrefix() throws{
        let strings = ["dog","racecar","car"]
        let result = problem.longestCommonPrefix(strings)
        XCTAssertEqual(result, "")
    }
    
    func testExistionCommonStringNotInPrefix() throws{
        let strings = ["reflower","flow","flight"]
        let result = problem.longestCommonPrefix(strings)
        XCTAssertEqual(result, "")
    }
    
    func testEmptyCommonPrefix2() throws{
        let strings = ["c","acc","ccc"]
        let result = problem.longestCommonPrefix(strings)
        XCTAssertEqual(result, "")
    }
    
    func testEmptyStrings() throws{
        let strings  = ["",""]
        let result = problem.longestCommonPrefix(strings)
        XCTAssertEqual(result, "")
        
    }
    
    func testOneEmptyStrings() throws{
        let strings  = ["","b"]
        let result = problem.longestCommonPrefix(strings)
        XCTAssertEqual(result, "")
        
    }


}
