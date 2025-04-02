class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        insert_index = 0
        for i in range(0, len(nums)): # loop through the entire array from 0 to length of nums
            if nums[i] != val: # if our current value in the array does not equal the constant val then do logic.
                nums[insert_index] = nums[i]
                insert_index += 1
        
        return insert_index
