class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        l = 1 # set left pointer equal to index 1

        for r in range(1, len(nums)): # create loop for right pointer to start at 1
            if nums[r] !=  nums[r - 1]: # do comparison on right pointer with the value it that came before it.
                nums[l] = nums[r] # if it is unqiue place the value at index l, and increment the left pointer.
                l += 1
        return l 
