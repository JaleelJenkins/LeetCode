# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        dummy = ListNode() # use dummy node to avoid edge cases of inserting into a empty list.
        tail = dummy 

        while l1 and l2:
            if l1.val < l2.val:
                tail.next = l1 # take the list 1 node and insert into our tail.
                l1 = l1.next 
            else: 
                tail.next = l2
                l2 = l2.next
            tail = tail.next 

        # What if one of the list has more nodes than the other? Than we just want to add on what is left to the    linked list.
        if l1:
            tail.next = l1
        elif l2:
            tail.next = l2

        return dummy.next
        