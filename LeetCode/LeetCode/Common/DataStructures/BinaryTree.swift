//
//  BinaryTree.swift
//  LeetCode
//
//  Created by Marina on 28/05/2022.
//

import Foundation
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    func convertToArray()->[Int]{
        if left == nil && right == nil{
            return [val]
        }
        var array = [Int]()
        array.append(val)
        let leftArray = left?.convertToArray()
        let rightArray =  right?.convertToArray()
        array.append(contentsOf: leftArray ?? [])
        array.append(contentsOf: rightArray ?? [])
        return array
    }
    
//    static func getLinkedList(from array:[Int])-> ListNode?{
//        var ourArray =  array
//        var tree:TreeNode? = nil
//        if !ourArray.isEmpty{
//            tree = TreeNode(ourArray.first!)
//            ourArray.removeFirst()
//            tree?.left = getLinkedList(from: ourArray)
//            tree?.right =  getLinkedList(from: <#T##[Int]#>)
//        }
//        return linkedList
//    }
}
