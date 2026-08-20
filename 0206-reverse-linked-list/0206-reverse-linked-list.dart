/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    
    while(head != null ){
        ListNode? temp = head.next;
        head.next = prev;
        prev = head;
        head = temp;
    }
    return prev;
    
  }
}