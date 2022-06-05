//
//  UniqueMealsTests.swift
//  LeetCodeTests
//
//  Created by Marina on 01/06/2022.
//

import XCTest
@testable import LeetCode

class UniqueMealsTests: XCTestCase {
    var problem = UniqueMeals()

    func testExample() throws {
        let meal1 =  Meal(name: "Basic Burger", ingredients: ["Lettuce", "Tomato", "Onion", "Patty"])
        let meal2 = Meal(name: "Cegief", ingredients: ["Cheese", "Tomato", "Patty", "Lettuce"])
        let meal3 = Meal(name: "Burger", ingredients: ["Tomato", "Lettuce", "Onion","Patty"])

        let meals = [meal1, meal2, meal3, meal3, meal1]
        let result = problem.getUniqueMealCount(meals: meals)
        XCTAssertEqual(result, 1)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
