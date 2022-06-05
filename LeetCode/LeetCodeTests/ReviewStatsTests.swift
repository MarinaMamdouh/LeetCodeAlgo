//
//  ReviewStatsTests.swift
//  LeetCodeTests
//
//  Created by Marina on 01/06/2022.
//

import XCTest
@testable import LeetCode

class ReviewStatsTests: XCTestCase {
var problem = BusinessReviewStats()


    func testExample() throws {
        let reviews = [
         Review(reviewId: 3, date: "2021-01-02", rating: 5),
         Review(reviewId: 5, date: "2021-01-15", rating: 1),
         Review(reviewId: 3, date: "2021-01-01", rating: 5),
         Review(reviewId: 3, date: "2021-02-01", rating: 5),
         Review(reviewId: 3, date: "2021-05-05", rating: 5),
         Review(reviewId: 3, date: "2021-01-03", rating: 5),
         Review(reviewId: 3, date: "2020-05-05", rating: 5),
         ]
        let result = problem.getReviewStatistics(reviews: reviews)
        print(result)
        let expectedStats =  ReviewStats(newestReviewDate: "2021-05-05",
                                                      oldestReviewDate: "2020-05-05",
                                                      reviewCount: 2,
                                                      averageRating: 3.0)
        XCTAssertEqual(result.newestReviewDate, expectedStats.newestReviewDate)
        XCTAssertEqual(result.oldestReviewDate, expectedStats.oldestReviewDate)
        //XCTAssertEqual(result.reviewCount, expectedStats.reviewCount)
        //XCTAssertEqual(result.averageRating, expectedStats.averageRating)
    }


}
