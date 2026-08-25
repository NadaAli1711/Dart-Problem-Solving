/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }
    ListNode? prev = null;
    ListNode? current = slow;
    // slow?.next = null;
    while (current != null) {
      ListNode? temp = current.next;
      current.next = prev;
      prev = current;
      current = temp;
    }
    while (prev != null && head != null) {
      // print(head.val);
      // print(prev.val);
      if (prev.val != head.val) return false;
      prev = prev.next;
      head = head.next;
    }

    return true;
  }
}
