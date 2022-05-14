//
//  PalindromeNumberTests.swift
//  LeetCodeTests
//
//  Created by Marina on 14/05/2022.
//

import XCTest
@testable import LeetCode

class PalindromeNumberTests: XCTestCase {
    var problem  = PalindromeNumber()
    func testTruePalindromeNumber() throws {
        let num = 121
        let result = problem.isPalindrome(num)
        XCTAssertEqual(result, true)
    }
    
    func testFalsePalindromNumber() throws{
        let num = 122
        let result = problem.isPalindrome(num)
        XCTAssertEqual(result, false)
    }
    
    func testNegativeNumber() throws{
        let num = -121
        let result = problem.isPalindrome(num)
        XCTAssertEqual(result, false)
    }
    
    func testTwoDigitNumber() throws{
        let num = 10
        let result = problem.isPalindrome(num)
        XCTAssertEqual(result, false)
    }
    
    func testOneDigitNumber() throws{
        let num = 2
        let result = problem.isPalindrome(num)
        XCTAssertEqual(result, true)
    }
    


}
