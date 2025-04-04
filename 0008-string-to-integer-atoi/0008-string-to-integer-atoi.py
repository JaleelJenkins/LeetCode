class Solution:
    def myAtoi(self, s: str) -> int:
        s = s.lstrip()
    
        if s=="":
            return 0


        sign=1
        if s[0]=='-':
            sign = -1
            s = s[1:]  
        elif s[0]=='+':
            s = s[1:] 
        
        val = 0
        for i in s:
            if i.isdigit(): 
                val = val * 10 + int(i)
            else:
                break  

        val *= sign
        int_max = 2**31 - 1
        int_min = -2**31
        if val > int_max:
            return int_max
        elif val < int_min:
            return int_min
        
        return val
            