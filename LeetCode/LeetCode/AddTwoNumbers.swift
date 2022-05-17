//
//  AddTwoNumbers.swift
//  LeetCode
//
//  Created by Marina on 13/05/2022.
//

import Foundation

class AddTwoNumbers{
   func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       var sum = 0
       if l1 == nil && l2 == nil{
           return nil
       }
       else if l2 == nil{
           sum = l1!.val
       }
       else if l1 == nil{
           sum = l2!.val
       }
       else{
           sum = l1!.val + l2!.val
       }
       
       var reminder = 0
       if sum > 9{
           reminder = 1
           sum = sum - 10
           if l1?.next == nil && l2?.next == nil{
               let reminderNode = ListNode(reminder)
               return ListNode(sum , addTwoNumbers(reminderNode, nil))
           }else if l1?.next == nil{
               let reminderNode = ListNode(reminder)
               return ListNode(sum, addTwoNumbers(reminderNode, l2?.next))
           }else if l2?.next == nil{
               let reminderNode = ListNode(reminder)
               return ListNode(sum, addTwoNumbers(l1?.next, reminderNode))
           }else{
               let newNextVal = (l1!.next?.val ?? 0) + reminder
               let newList1Node = l1?.next
               newList1Node?.val = newNextVal
               return ListNode(sum , addTwoNumbers(newList1Node, l2?.next))
           }
       
       }
       return ListNode(sum, addTwoNumbers(l1?.next, l2?.next))
   }

}
