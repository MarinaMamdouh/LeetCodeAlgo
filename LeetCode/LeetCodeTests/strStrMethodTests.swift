//
//  strStrMethodTests.swift
//  LeetCodeTests
//
//  Created by Marina on 19/05/2022.
//

import XCTest
@testable import LeetCode


class strStrMethodTests: XCTestCase {
    
    func testHellowithLL() throws {
        let haystack = "hello"
        let needle = "ll"
        let result = String.strStr(haystack, needle)
        XCTAssertEqual(result, 2)
    }
    
    func testNoNeedleInHaystack() throws{
        let haystack = "aaaaa"
        let needle = "bba"
        let result = String.strStr(haystack, needle)
        XCTAssertEqual(result, -1)
    }
    
    func testMessipi() throws{
        let haystack = "mississippi"
        let needle = "issip"
        let result = String.strStr(haystack, needle)
        XCTAssertEqual(result, 4)
    }

}
