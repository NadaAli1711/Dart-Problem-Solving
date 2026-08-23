/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  void reorderList(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head;

    // dedicte the middle of linkedList
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    //  deattach two halves
    ListNode? curr = slow?.next;
    slow?.next = null;

    // reverse second half
    ListNode? prev = null;
    while (curr != null) {
      ListNode? temp = curr.next;
      curr.next = prev;
      prev = curr;
      curr = temp;
    }

    ListNode? first = null;
    ListNode? second = null;
    while (head != null && prev != null) {
      first = head.next;
      head.next = prev;
      second = prev.next;
      prev.next = first;
      head = first;
      prev = second;
    }
  }
}
