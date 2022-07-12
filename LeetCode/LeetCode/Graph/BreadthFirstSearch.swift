//
//  BreadthFirstSearch.swift
//  LeetCode
//
//  Created by Marina on 09/07/2022.
//

import Foundation

class BreadthFirstSearch{
    func getShortestPath(in graph:Graph<String>, from location:String, to destination:String)-> Int{
        
        let allVertcies = graph.getAllVerticies()
        if !allVertcies.contains(location) || !allVertcies.contains(destination){
            // unreachable because location or destination doesn't exist
            return -1
        }
        
        var queue = [location]
        var neigboursQueue:[String] = []
        var visitedVertices = Set<String>()
        var distance = 0
        while !queue.isEmpty{
            let vertex = queue.removeFirst()
            visitedVertices.insert(vertex)
            if vertex == destination {
                return distance
            }
            let neigbours = graph.getNeigbours(of: vertex)
            let unvisistedNeigbours =  getUnvisitedVertcies(setOfVertcies: neigbours, visited: visitedVertices)
            neigboursQueue.append(contentsOf: unvisistedNeigbours)
            visitedVertices.formUnion(unvisistedNeigbours)
            
            if queue.isEmpty {
                // all our current neigbours are not targeted destination
                // so we are looking for the further neigbours
                // so we are taking extra step further
                distance += 1
                queue.append(contentsOf: neigboursQueue)
                neigboursQueue = []
            }
           
        }
        // unreachable there is no path
        return -1
    }
    
    func getShortestSpanningTree(in graph:Graph<Int>, from location:Int)-> [Int]{
        
        let allVertcies = graph.getAllVerticies()
        if !allVertcies.contains(location){
            // unreachable because location or destination doesn't exist
            return []
        }
        
        var queue = [location]
        var visitedVertices = Set<Int>()
        var spanningTree = [Int]()
        while !queue.isEmpty{
            let vertex = queue.removeFirst()
            spanningTree.append(vertex)
            visitedVertices.insert(vertex)
            let neigbours = graph.getNeigbours(of: vertex)
            let unvisistedNeigbours =  getUnvisitedVertcies(setOfVertcies: neigbours, visited: visitedVertices)
            queue.append(contentsOf: unvisistedNeigbours)
            visitedVertices.formUnion(unvisistedNeigbours)
           
        }
        return spanningTree
    }
    private func getUnvisitedVertcies<T>(setOfVertcies:Set<T>, visited:Set<T>)->[T] where T:Hashable{
        var unVisited = Set<T>()
        for vertex in setOfVertcies{
            if !visited.contains(vertex){
                unVisited.insert(vertex)
            }
        }
        return Array(unVisited)
    }
}
