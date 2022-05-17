//
//  LinkedList.swift
//  LeetCode
//
//  Created by Marina on 17/05/2022.
//

import Foundation
class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    func convertToArray()->[Int]{
        if next == nil{
            return [val]
        }
        var array = [Int]()
        array.append(val)
        let nextArray = next?.convertToArray()
        array.append(contentsOf: nextArray ?? [])
        return array
    }
    
    static func getLinkedList(from array:[Int])-> ListNode?{
        var ourArray =  array
        var linkedList:ListNode? = nil
        if !ourArray.isEmpty{
            linkedList = ListNode(ourArray.first!)
            ourArray.removeFirst()
            linkedList?.next = getLinkedList(from: ourArray)
        }
        return linkedList
    }
}
