//
//  SquareRootTests.swift
//  LeetCodeTests
//
//  Created by Marina on 23/05/2022.
//

import XCTest
@testable import LeetCode

class SquareRootTests: XCTestCase {
    var problem = SquareRoot()
    func testExample() throws {
        let x = 4
        let result = problem.mySqrt(x)
        XCTAssertEqual(result, 2)
    }
    
    func testExample2() throws {
        let x = 8
        var result = problem.mySqrt(x)
        XCTAssertEqual(result, 2)
        
        let y = 7
        result = problem.mySqrt(y)
        XCTAssertEqual(result, 2)
    }
    
    func testExample3() throws {
        var x = 9
        var result = problem.mySqrt(x)
        XCTAssertEqual(result, 3)
        
         x = 11
         result = problem.mySqrt(x)
        XCTAssertEqual(result, 3)
    }


}
