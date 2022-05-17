//
//  MergeTwoSortedListsTests.swift
//  LeetCodeTests
//
//  Created by Marina on 17/05/2022.
//

import XCTest
@testable import LeetCode

class MergeTwoSortedListsTests: XCTestCase {
    var problem = MergeTwoSortedLists()
    func testExample() throws {
//        let list1Node3 = ListNode(4)
//        let list1Node2 = ListNode(2, list1Node3)
//        let list1 = ListNode(1, list1Node2)
//        let list2Node3 = ListNode(4)
//        let list2Node2 = ListNode(3, list2Node3)
//        let list2 = ListNode(1, list2Node2)
        let list1 = ListNode.getLinkedList(from: [4])
        let list2 = ListNode.getLinkedList(from: [4])
        
        let result = problem.mergeTwoLists(list1, list2)
        XCTAssertEqual(result?.convertToArray(), [4,4])
        
    }



}
