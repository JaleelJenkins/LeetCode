/* Write your PL/SQL query statement below 

    Problem: Write a solutiion to find the users who have valid emails.

     - Need to use matching such as REGEX or LIKE to match values on mail for validation.
     - Prefix name must start with a letter 

 CODE:
    ^ - The start condition of a string
    [[:alpha:]]+ - The set of all alphabets, must match once or more
    [[:alnum:]]_|>|-]* - The set of all alphabets, all numbers and _.-,
    [.] - Means any single character except \n and \r, wo we need to use [.]
    $ - The end condition of a string

*/

select *
from Users
where REGEXP_LIKE(mail, '^[[:alpha:]]+[[:alnum:]|_|.|-]*@leetcode[.]com$')
