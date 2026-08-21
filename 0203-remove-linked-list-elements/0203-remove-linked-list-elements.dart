/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? removeElements(ListNode? head, int val) {
    ListNode dummy = ListNode(0);
    dummy.next = head;
    ListNode prev = dummy;

    while(head != null){
        if(head.val == val){
            prev.next = head.next;
        }else{
            prev = head;
        }
        head = head.next;
    }
    return dummy.next;

    
  }
}