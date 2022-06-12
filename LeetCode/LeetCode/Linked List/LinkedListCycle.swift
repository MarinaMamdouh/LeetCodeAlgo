//
//  LinkedListCycle.swift
//  LeetCode
//
//  Created by Marina on 27/05/2022.
//

import Foundation
class LinkedListCycle{
    func hasCycle(_ head: ListNode?) -> Bool {
        var fast:ListNode? =  head
        var slow:ListNode? = head
        while(fast != nil && fast?.next != nil){
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast{
                return true
            }
        }
        return false
    }
}
