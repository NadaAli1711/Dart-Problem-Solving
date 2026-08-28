/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    int length = 0;
    ListNode? current = head;
    while(current != null){
        length++;
        current = current.next;
    }
    if(length <= 1) return null;
    ListNode? dummy = ListNode(0);
    ListNode? prev = dummy;
    prev.next = head;
    current = head;
    int temp = length - n;
    int counter = 1;
    while(counter <= temp){
        counter++;
        prev = current;
        current = current?.next;

    }
    prev?.next = prev?.next?.next;
    return dummy?.next;
    
  }
}