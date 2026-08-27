/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? swapPairs(ListNode? head) {
    ListNode dummy = ListNode(0);
    ListNode prev = dummy; 
    prev.next = head;
    while(head != null && head.next != null){
        ListNode? temp = head.next;
        head.next = temp?.next;
        temp?.next = head;
        prev.next = temp;
        prev = head;
        head = head.next;
    }
    return dummy.next;
    
  }
}