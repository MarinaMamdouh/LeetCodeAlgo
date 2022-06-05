//
//  ReviewStats.swift
//  LeetCode
//
//  Created by Marina on 01/06/2022.
//

import Foundation

import Foundation

// <-- EXPAND to see the data classes
struct Review: Codable {
    let reviewId: Int
    let date: String
    let rating: Int
}

struct ReviewStats {
    let newestReviewDate: String?
    let oldestReviewDate: String?
    let reviewCount: Int
    let averageRating: Double
}

class BusinessReviewStats{

func getReviewStatistics(reviews: [Review]) -> ReviewStats {
    let reviewsCount = reviews.count
    if reviewsCount == 0{
        return ReviewStats(newestReviewDate: nil, oldestReviewDate: nil, reviewCount: 0, averageRating: 0)
    }
    var reviewDates = [Date]()
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    //formatter.locale = NSLocale.current
    for review in reviews {
        
        if let date = formatter.date(from: review.date){
            reviewDates.append(date)
        }
    }
    
    let sortedReviewsByDate =  reviewDates.sorted(by: {$0.compare($01) == .orderedDescending})
    
    let newestReviewDate = sortedReviewsByDate.first!
    let oldestReviewDate = sortedReviewsByDate.last!
    
    let sumAllReviewRate = reviews.reduce(0) { partialResult, review in
        return partialResult + review.rating
    }
    
    let averageReviewsRate = Double(sumAllReviewRate) / Double(reviewsCount)
    let nearest = 1/0.5
    let numberToRound = averageReviewsRate * nearest
    let averageReviewsRateRounded = numberToRound.rounded() / nearest
    
    return ReviewStats(newestReviewDate: formatter.string(from: newestReviewDate), oldestReviewDate: formatter.string(from: oldestReviewDate), reviewCount: reviewsCount, averageRating: averageReviewsRateRounded)
    // Example input:
    // [
    //  Review(reviewId: 3, date: "2021-01-02", rating: 5)
    //  Review(reviewId: 5, date: "2021-01-15", rating: 1)
    // ]
    // Example output:
    // ReviewStats(newestReviewDate: "2021-01-15",
    //             oldestReviewDate: "2021-01-02",
    //             reviewCount: 2,
    //             averageRating: 3.0)
    // Explanation:
    // There are 2 reviews total.
    // The average rating is 3.0 (1+5)/2.
    // 2021-01-15 is more recent than 2021-01-02.
    // COMPLETE ME

}
}
