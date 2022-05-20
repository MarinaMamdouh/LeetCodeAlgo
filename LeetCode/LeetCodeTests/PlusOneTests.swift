//
//  PlusOneTests.swift
//  LeetCodeTests
//
//  Created by Marina on 20/05/2022.
//

import XCTest
@testable import LeetCode

class PlusOneTests: XCTestCase {
    var problem = PlusOne()
    func testExample1() throws {
        let digits = [1,2,3]
        let result = problem.plusOne(digits)
        XCTAssertEqual(result, [1,2,4])
    }
    
    func testExample2() throws {
        let digits = [4,3,2,1]
        let result = problem.plusOne(digits)
        XCTAssertEqual(result, [4,3,2,2])
    }
    
    func testExample3() throws {
        let digits = [9]
        let result = problem.plusOne(digits)
        XCTAssertEqual(result, [1,0])
    }

    func testExample4() throws {
        let digits = [2,9]
        let result = problem.plusOne(digits)
        XCTAssertEqual(result, [3,0])
    }
    
    func testExample5() throws {
        let digits = [9,9,9]
        let result = problem.plusOne(digits)
        XCTAssertEqual(result, [1,0,0,0])
    }
}
