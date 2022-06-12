//
//  MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by Marina on 17/05/2022.
//

import Foundation

class MergeTwoSortedLists{
     
    // recursion
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil{
            return nil
        }else if list1 == nil{
            return list2
        }else if list2 == nil{
            return list1
        }
        
        if list1!.val <= list2!.val{
            let newNode = ListNode(list1!.val, mergeTwoLists(list1?.next, list2))
            return newNode
            
        }else{
            let newNode = ListNode(list2!.val, mergeTwoLists(list1, list2?.next))
            return newNode
        }
    }
    
    // more speed solution
    
    func merge(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var l1 = list1
        var l2 = list2
        var mergedList = ListNode()
        let head = mergedList
        while l1 != nil && l2 != nil{
            if l1!.val < l2!.val{
                mergedList.next = l1
                l1 = l1?.next
            }else{
                mergedList.next = l2
                l2 = l2?.next
            }
            mergedList = mergedList.next!
        }
        if l1 != nil{
            mergedList.next = l1
        }else{
            mergedList.next = l2
        }
        return head.next
    }
    
//    func merge(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//        var firstList = list1
//        var secondList = list2
//        var lastNode:ListNode? = nil
//        var mergedList:ListNode? = lastNode
//        while firstList != nil && secondList != nil{
//            if firstList!.val <= secondList!.val{
//                if let list = mergedList{
//
//                    lastNode = ListNode(firstList!.val)
//                    mergedList = lastNode
//                }else{
//                    let node =  ListNode(firstList!.val)
//                    lastNode?.next = node
//                    mergedList.n
//                }
//                add(value: firstList!.val, to: &mergedList)
//            }else{
//                add(value: secondList!.val, to: &mergedList)
//            }
//        }
//        return mergedList
//
//    }
//
//    func add(value:Int, to list:inout ListNode?){
//        if node == nil{
//            node = ListNode(value)
//            return
//        }
//        node?.next = ListNode(value)
//    }
}
