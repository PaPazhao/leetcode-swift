//
//  File.swift
//  
//
//  Created by zhaoli on 2022/10/26.
//

import Foundation

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let dummp = ListNode(-1)
    dummp.next = head
    let node = findKthFromEnd(dummp, n + 1)
    node?.next = node?.next?.next
    return dummp.next
}

// 找到倒数第 k 个节点
func findKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
    var fast = head, slow = head
    for _ in 0..<k {
        fast = fast?.next
    }
    while fast != nil {
        fast = fast?.next
        slow = slow?.next
    }
    return slow
}

/*:
 https://leetcode.cn/problems/remove-nth-node-from-end-of-list/description/
 19. 删除链表的倒数第 N 个结点
 中等
 2.3K
 相关企业
 给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。

  

 示例 1：


 输入：head = [1,2,3,4,5], n = 2
 输出：[1,2,3,5]
 示例 2：

 输入：head = [1], n = 1
 输出：[]
 示例 3：

 输入：head = [1,2], n = 1
 输出：[1]
  

 提示：

 链表中结点的数目为 sz
 1 <= sz <= 30
 0 <= Node.val <= 100
 1 <= n <= sz
  

 进阶：你能尝试使用一趟扫描实现吗？
 */
