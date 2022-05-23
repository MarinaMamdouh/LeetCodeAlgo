//
//  AddBinaryTests.swift
//  LeetCodeTests
//
//  Created by Marina on 23/05/2022.
//

import XCTest
@testable import LeetCode

class AddBinaryTests: XCTestCase {
    var problem = AddBinary()

    func testExample() throws {
        let a = "11"
        let b = "1"
        let result = problem.addBinary(a, b)
        XCTAssertEqual(result, "100")
    }
    
    func testExample2() throws{
        let a = "1010"
        let b = "1011"
        let result = problem.addBinary(a, b)
        XCTAssertEqual(result, "10101")
    }
    
    func testExample3() throws {
        let a = "111"
        let b = "11"
        let result = problem.addBinary(a, b)
        XCTAssertEqual(result, "1010")
    }

}
