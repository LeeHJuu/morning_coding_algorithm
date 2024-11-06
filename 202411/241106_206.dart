 class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextnode = current.next;
      current.next = prev;
      prev = current;
      current = nextnode;
    }

    return prev;
  }
}
