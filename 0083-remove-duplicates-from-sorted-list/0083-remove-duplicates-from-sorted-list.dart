/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode dummy = ListNode(0);
    ListNode prev = dummy;
    dummy.next = head;
    while (head != null && head.next != null) {
      if (head.val == head.next?.val) {
        prev.next = head.next;
      } else {
        prev = head;
      }
      head = head.next;
    }
    return dummy.next;
  }
}
