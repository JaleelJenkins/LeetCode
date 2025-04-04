class Solution:
    def reverse(self, n: int) -> int:
        ans=0
        y=abs(n)
        
        while y:
            last=y%10
            ans=ans*10+last
            y//=10
        if n<0:
            ans=ans*-1
        if ans>(2**31)-1 or ans<(-2)**31:
            return 0
        return ans