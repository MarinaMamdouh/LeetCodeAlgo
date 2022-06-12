//
//  FirstBadVersionTests.swift
//  LeetCodeTests
//
//  Created by Marina on 12/06/2022.
//

import XCTest
@testable import LeetCode

class FirstBadVersionTests: XCTestCase {
    var problem = FirstBadVersion()
    func testExample() throws {
        problem.firstBadVersion = 3
        let n = 5
        let result = problem.firstBadVersion(n)
        XCTAssertEqual(result, 3)
    }
    
    func testAllBadVersion() throws {
        problem.firstBadVersion = 1
        let n = 5
        let result = problem.firstBadVersion(n)
        XCTAssertEqual(result, 1)
    }
    
    func testLastOnlyBadVersion() throws {
        problem.firstBadVersion = 5
        let n = 5
        let result = problem.firstBadVersion(n)
        XCTAssertEqual(result, 5)
    }
    
    func testOneItemBadVersion() throws {
        problem.firstBadVersion = 1
        let n = 1
        let result = problem.firstBadVersion(n)
        XCTAssertEqual(result, 1)
    }
    
    func testMiddleBadVersion() throws {
        problem.firstBadVersion = 4
        let n = 5
        let result = problem.firstBadVersion(n)
        XCTAssertEqual(result, 4)
    }


}
