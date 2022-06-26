//
//  BestTimeStocks.swift
//  LeetCode
//
//  Created by Marina on 26/06/2022.
//

import Foundation

class BestTimeStocks{
    
    func maxProfit(_ prices: [Int]) -> Int {
        var bestBuyDay = 0
        var bestSellDay = 1
        var maxProfit = 0
        while(bestSellDay < prices.count){
            let bestBuy = prices[bestBuyDay]
            let bestSell = prices[bestSellDay]
            let profit =  bestSell - bestBuy
            if profit > 0 {
                maxProfit = max(profit, maxProfit)
            }else{
                bestBuyDay = bestSellDay
            }
            bestSellDay += 1
        }
        return maxProfit
        
    }
}
