/* Write your PL/SQL query statement below 

    Problem: Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

    Steps: 
        -- There is no function to do this directly in SQL so need to use nesting.
        -- Nest and concatenate the UPPER() and LOWER() functions.

*/

Select user_id, CONCAT(UPPER(SUBSTR(name,1,1)),LOWER(SUBSTR(name,2))) AS Name 
From Users
Order by user_id;