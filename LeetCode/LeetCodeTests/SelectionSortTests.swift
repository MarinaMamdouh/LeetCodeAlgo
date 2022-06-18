//
//  SelectionSortTests.swift
//  LeetCodeTests
//
//  Created by Marina on 18/06/2022.
//

import XCTest
@testable import LeetCode

class SelectionSortTests: XCTestCase {
    let problem = SelectionSort()
    
    func testExample() throws {
        let array = [4,3,6,1,0,1,10]
        let result = problem.sort(array: array)
        XCTAssertEqual(result, [0,1,1,3,4,6,10])
    }
    
    func testBigData() throws{
        let bigArray =  generateBigData()
        let result = problem.sort(array: bigArray)
        XCTAssertEqual(result, bigArray.sorted())
    }
    
    private func generateBigData()-> [Int]{
        var bigArray = [Int]()
        for _ in 1...1000{
            let randomNumber = Int.random(in: Int.min...Int.max)
            bigArray.append(randomNumber)
        }
        return bigArray
    }
    
    
    
    

    func testPerformanceForBigData() throws {
        let bigArray = generateBigData()
        self.measure {
            _ = problem.sort(array: bigArray)
        }
        
    }

}
