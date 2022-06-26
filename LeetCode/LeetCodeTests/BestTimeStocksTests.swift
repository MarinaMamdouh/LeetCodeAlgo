//
//  BestTimeStocksTests.swift
//  LeetCodeTests
//
//  Created by Marina on 26/06/2022.
//

import XCTest
@testable import LeetCode

class BestTimeStocksTests: XCTestCase {
    var problem = BestTimeStocks()
    func testExample() throws {
        let prices = [7,1,5,3,6,4]
        let result = problem.maxProfit(prices)
        XCTAssertEqual(result, 5)
    }
    
    func testExample2() throws {
        let prices = [7,3,5,1,6,4]
        let result = problem.maxProfit(prices)
        XCTAssertEqual(result, 5)
    }
    
    func testExample3() throws {
        let prices = [7,6,5,4,3,2]
        let result = problem.maxProfit(prices)
        XCTAssertEqual(result, 0)
    }


}
