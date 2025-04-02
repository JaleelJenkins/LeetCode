class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        if needle == "": # check if needle is an empty string.
            return 0
        
        for i in range(len(haystack) + 1 - len(needle)): # Subtract needle so you don't loop through every element.
            if haystack[i: i + len(needle)] == needle:
                return i
        return -1 
