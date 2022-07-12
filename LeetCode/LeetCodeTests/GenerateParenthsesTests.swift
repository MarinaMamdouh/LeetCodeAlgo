//
//  GenerateParenthses.swift
//  LeetCodeTests
//
//  Created by Marina on 12/07/2022.
//

import XCTest
@testable import LeetCode

class GenerateParenthsesTest: XCTestCase {
    var problem = GenerateParantheses()

    func testExample() throws {
        let n  = 2
        let result = problem.generateParenthesis(n)
        print(result)
        
    }


}
