class Solution:
    def isPalindrome(self, x: int) -> bool:
        # Perform inital check, if negative it cannot be a palindrome.
        if x < 0:
            return False
        
        # Initialize two variables reversed: store the reversed value of the number x. 
        reversed_num = 0
        # temp is a placeholder to manipulate the input number without modifying the original value.
        temp = x

        # We enter a loop
        while temp!=0:
            # Extract the last digit of the temp using the modulo operator % and store it in digit.
            digit = temp % 10
            # To reverse the number, we multiply the current value of reversed by 10 and add the extracted digit.
            reversed_num = reversed_num * 10 + digit
            # We then divide temp by 10 to remove the last digit and move on to the next iteration.
            temp //= 10
        
        return reversed_num == x