//
//  SurroundedRegions.swift
//  LeetCode
//
//  Created by Marina on 11/07/2022.
//

import Foundation
class SurroundedRegions {
    func solve(_ board: inout [[Character]]) {
        // check if is not only borders board dimension must be larger than 2
        let height = board.count
        let width = board[0].count
        if height < 3 || width < 3 {
            // board has no regions to remove it is all borders
            return
        }
        // loop on borders (0, any) (any,0), (last, any) ,( any , last)
        let lastRowIndex = height - 1
        let lastColumnIndex = width - 1
        var rowIndex = 0
        var columnIndex = 0
        var bordersAreVisited = false
        while(true){
            let item = board[rowIndex][columnIndex]
            //check its neigbours recursivly if any is o then convert it to 1
            if item == "O"{
                checkNeigbours(&board, rowIndex: rowIndex, columnIndex: columnIndex)
            }
            if rowIndex == 0 && (0...(lastColumnIndex - 1)).contains(columnIndex){
                // we are in the top border
                columnIndex += 1
                if bordersAreVisited{
                    // if all borders are visited before
                    break
                }
            }else if (0...(lastRowIndex - 1)).contains(rowIndex) && columnIndex == lastColumnIndex{
                // we finished the top border and we are in the right border
                rowIndex += 1
            }else if rowIndex == lastRowIndex && (1...lastColumnIndex).contains(columnIndex){
                // we finished the rightborder and we are in the bottom border
                columnIndex -= 1
            }else if columnIndex == 0 && (1...lastRowIndex).contains(rowIndex){
                // we finished the bottomborder and we are in the left border
                rowIndex -= 1
                bordersAreVisited = true
            }
            
        }
        // loop on entire board and convert all 1's to o and all o to x
        removeIsolatedRegions(from: &board)
        
    }
    
    private func checkNeigbours(_ board: inout [[Character]], rowIndex:Int , columnIndex:Int){
        let item = board[rowIndex][columnIndex]
        // if it is X then we reached the end of region
        if item != "O"{
            return
        }
        // if we hit a o then convert it to 1
        board[rowIndex][columnIndex] = "1"
        let rightNeigbourRowIndex = rowIndex + 1
        // check if it has right neighbour
        if rightNeigbourRowIndex < board.count{
            checkNeigbours(&board, rowIndex: rightNeigbourRowIndex, columnIndex: columnIndex)
        }
        // check if it has left neighbour
        let leftNeigbourRowIndex = rowIndex - 1
        if leftNeigbourRowIndex >= 0{
            checkNeigbours(&board, rowIndex: leftNeigbourRowIndex, columnIndex: columnIndex)
        }
        // check if it has top neighbour
        let topNeigbourColumnIndex = columnIndex - 1
        if topNeigbourColumnIndex >= 0{
            checkNeigbours(&board, rowIndex: rowIndex, columnIndex: topNeigbourColumnIndex)
        }
        // check if it has bottom neighbour
        let bottomNeigbourColumnIndex = columnIndex + 1
        if bottomNeigbourColumnIndex < board[0].count{
            checkNeigbours(&board, rowIndex: rowIndex, columnIndex: bottomNeigbourColumnIndex)
        }
    }
    
    
    private func removeIsolatedRegions(from board: inout [[Character]]){
        for rowIndex in 0...board.count-1{
            for columnIndex in 0...board[0].count-1{
                let item = board[rowIndex][columnIndex]
                if item == "1"{
                    board[rowIndex][columnIndex] = "O"
                }else if item == "O"{
                    board[rowIndex][columnIndex] = "X"
                }
            }
        }
    }
}
