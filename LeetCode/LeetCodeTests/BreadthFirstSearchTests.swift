//
//  BreadthFirstSearchTests.swift
//  LeetCodeTests
//
//  Created by Marina on 09/07/2022.
//

import XCTest
@testable import LeetCode

class BreadthFirstSearchTests: XCTestCase {
    var problem = BreadthFirstSearch()
    var cairoMap = Graph<String>()
    func testShortestPath() throws {
        initiateCairoMap()
       var start = "home"
        var finish = "Nady El Shams"
        var shortestDistance = problem.getShortestPath(in: cairoMap, from: start, to: finish)
        XCTAssertEqual(shortestDistance, 3)
        
        start = "home"
        finish = "Amar Ibn Yassir"
        shortestDistance = problem.getShortestPath(in: cairoMap, from: start, to: finish)
        XCTAssertEqual(shortestDistance, 2)
    }
    
    func testShortestPathUnreachable() throws{
        let start = "Nady El Shams"
         let finish = "sheraton"
         let shortestDistance = problem.getShortestPath(in: cairoMap, from: start, to: finish)
         XCTAssertEqual(shortestDistance, -1)
    }
    
    func initiateCairoMap(){
         let start = "home"
         let saintFatima = "St Fatima Square"
         let hegaz = "El Hegaz square"
         let militaryCollage = "Military Collage"
         let amar = "Amar Ibn Yassir"
         let sheraton  = "Sheraton"
         let nadyShams = "Nady El Shams"
        cairoMap.addEdges(vertex: start, neigbours: [saintFatima,militaryCollage])
        cairoMap.addEdges(vertex: saintFatima, neigbours: [hegaz])
        cairoMap.addEdges(vertex: hegaz, neigbours: [nadyShams])
        cairoMap.addEdges(vertex: militaryCollage, neigbours: [amar, sheraton])
        cairoMap.addEdges(vertex: amar, neigbours: [hegaz])
        cairoMap.addEdges(vertex: sheraton, neigbours: [hegaz])
        
    }

}
