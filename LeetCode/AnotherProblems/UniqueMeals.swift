//
//  UniqueMeals.swift
//  LeetCode
//
//  Created by Marina on 01/06/2022.
//

import Foundation

class UniqueMeals{
    func getUniqueMealCount(meals: [Meal]) -> Int {
        var ingredientsDictionary:[Set<String>:Int] = [:]
        var uniqueMealsCount =  meals.count
        for meal in meals {
            var setOfIngredients = Set<String>()
            setOfIngredients.formUnion(meal.ingredients)
            // set of ingredients exists before
            if let occurences = ingredientsDictionary[setOfIngredients]{
                if occurences == 1{
                    uniqueMealsCount -= 2
                }else{
                    uniqueMealsCount -= 1
                }
                ingredientsDictionary[setOfIngredients] = occurences + 1
                
            }else{
                ingredientsDictionary[setOfIngredients] = 1
            }
        }
        
        return uniqueMealsCount
    }
}

struct Meal {
    let name: String
    let ingredients: [String]
}
