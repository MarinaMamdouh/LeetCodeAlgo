//
//  GraphTests.swift
//  LeetCodeTests
//
//  Created by Marina on 09/07/2022.
//

import XCTest
@testable import LeetCode

class GraphTests: XCTestCase {
    

    func testIntializingGraphOfTypeString() throws {
        let graph = Graph<String>()
        XCTAssertEqual(graph.getAllVerticies(), [], "Intializing graph is tested")
    }
    
    func testAddVertexToEmptyGraph() throws {
        let emptyGraph = Graph<String>()
        let start = "You"
        emptyGraph.add(vertex: start)
        
        XCTAssertEqual(emptyGraph.getAllVerticies(), [start], "Add Vertex to Empty Graph Tested")
    }
    
    func testAddEdgeInGraph() throws {
        let graph = Graph<String>()
        let start = "you"
        let claire = "claire"
        let bob = "bob"
        
        graph.addEdge(from: start, to: claire)
        XCTAssertEqual(graph.getAllVerticies(), [start, claire])
        XCTAssertEqual(graph.getNeigbours(of: start), [claire])
        
        graph.addEdge(from: start, to: bob)
        XCTAssertEqual(graph.getAllVerticies(), [start, claire, bob])
        XCTAssertEqual(graph.getNeigbours(of: start), [claire, bob])
    }
    
    func testAddingEdgesInGraph() throws{
        let graph = Graph<String>()
        let start = "you"
        let claire = "claire"
        let bob = "bob"
        
        graph.addEdges(vertex: start, neigbours: [claire, bob])
        XCTAssertEqual(graph.getAllVerticies(), [start, claire, bob])
        XCTAssertEqual(graph.getNeigbours(of: start), [claire, bob])
        
        let alice = "alice"
        let jonny = "jonny"
        
        graph.addEdges(vertex: start, neigbours: [alice, jonny])
        XCTAssertEqual(graph.getAllVerticies(), [start, claire, bob, alice, jonny])
        XCTAssertEqual(graph.getNeigbours(of: start), [claire, bob, alice, jonny])
    }
}
