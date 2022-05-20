//
//  LengthLastWordTests.swift
//  LeetCodeTests
//
//  Created by Marina on 20/05/2022.
//

import XCTest
@testable import LeetCode

class LengthLastWordTests: XCTestCase {
    var problem = LengthLastWord()
    func testExample() throws {
        let s = "Hello World"
        let result = problem.lengthOfLastWord(s)
        XCTAssertEqual(result, 5)
    }
    
    func testExample2() throws{
        let s = "   fly me   to   the moon  "
        let result = problem.lengthOfLastWord(s)
        XCTAssertEqual(result, 4)
    }



}
