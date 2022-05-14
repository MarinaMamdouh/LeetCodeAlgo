//
//  LeetCodeTests.swift
//  LeetCodeTests
//
//  Created by Marina on 13/05/2022.
//

import XCTest
@testable import LeetCode

class AddTwoNumbersTests: XCTestCase {

    var problem = AddTwoNumbers()

    func testSolution() throws {
        let firstNumberNode3 = ListNode(9)
        let firstNumberNode2 = ListNode(9,firstNumberNode3)
        let firstNumberTree = ListNode(9, firstNumberNode2)
        let secondNumbeNode2 = ListNode(9)
        let secondNumberTree = ListNode(9, secondNumbeNode2)
        _ = problem.addTwoNumbers(firstNumberTree, secondNumberTree)
    }

}
