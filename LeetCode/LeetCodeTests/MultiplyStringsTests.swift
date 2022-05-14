//
//  MultiplyStringsTests.swift
//  LeetCodeTests
//
//  Created by Marina on 13/05/2022.
//

import XCTest
@testable import LeetCode

class MultiplyStringsTests: XCTestCase {
    var problem = MultiplyStrings()
    
    func testSolution() throws {

        let number1 = "123456789"
        let number2 = "987654321"
        let result = problem.multiply(number1, number2)
        XCTAssert(result == "121932631112635269")
    }
    
    func testSolutionBigNumber() throws{
        let number1 = "498828660196"
        let number2 = "840477629533"
        let result = problem.multiply(number1, number2)
        XCTAssert(result == "121932631112635269")
    }
}
