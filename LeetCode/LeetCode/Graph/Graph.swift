//
//  Graph.swift
//  LeetCode
//
//  Created by Marina on 09/07/2022.
//

import Foundation


class Graph<T> where T: Hashable{
    
    private var map = [T:Set<T>]()
    
    // add new vertex to the map with zero neigbours
    func add(vertex:T){
        map[vertex] = []
    }
    
    // add edge between two vertecies ( may be new vertecies or already existsed in the map)
    func addEdge(from source:T, to destination:T){
        // check if there source vertex is in map
        // append the destination to the array of its neigbours vertices
       
        if map[source] != nil{
            map[source]?.insert(destination)
        }else{
            // else add the source vertex in the map with array of one item of destination vertex
            map[source] = [destination]
        }
        // check if destination vertex is not existing in mapp
        // add this new vertex to the map
        if map[destination] == nil {
            add(vertex: destination)
        }
    }
    
    func getAllVerticies()->Set<T>{
        let verticies = Set(map.keys)
        return verticies
    }
    
    func getNeigbours(of vertex:T)->Set<T>{
        let neigbours = map[vertex]
        return neigbours ?? []
    }
    
    func addEdges(vertex:T , neigbours:[T]){
        for neigbour in neigbours {
            addEdge(from: vertex, to: neigbour)
        }
    }
    
    func displayGraph()-> String{
        var mapString = ""
        for key in map.keys{
            mapString += "\(key):( "
            let neigbours = map[key] ?? []
            for neigbour in neigbours {
                mapString += "\(neigbour)  "
            }
            mapString += ")\n"
        }
        return mapString
    }
    
}
