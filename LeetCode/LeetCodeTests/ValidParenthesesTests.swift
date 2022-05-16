//
//  ValidParenthesesTests.swift
//  LeetCodeTests
//
//  Created by Marina on 16/05/2022.
//

import XCTest
@testable import LeetCode

class ValidParenthesesTests: XCTestCase {
    var problem = ValidParentheses()
    func testValid() throws {
        var test = "()"
        var result = problem.isValid(test)
        XCTAssertEqual(result, true)
        test = "()[]{}"
        result = problem.isValid(test)
        XCTAssertEqual(result, true)
        
        test = "[{}]"
        result = problem.isValid(test)
        XCTAssertEqual(result, true)
    }
    
    func testInvalid() throws{
        var test = "(]"
        var result = problem.isValid(test)
        XCTAssertEqual(result, false)
        test = "{"
        result = problem.isValid(test)
        XCTAssertEqual(result, false)
        
        test = ""
        result = problem.isValid(test)
        XCTAssertEqual(result, false)
        
        test = "[{)]"
        result = problem.isValid(test)
        XCTAssertEqual(result, false)
    }
    
    



}
