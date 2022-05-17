//
//  MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by Marina on 17/05/2022.
//

import Foundation

class MergeTwoSortedLists{
     
    
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
}
