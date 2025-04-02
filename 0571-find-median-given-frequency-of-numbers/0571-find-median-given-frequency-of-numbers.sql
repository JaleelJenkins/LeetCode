/* 
    Write your PL/SQL query statement below 

    Problem: Write a solution to report the median of all the numbers in the database after decompressing the Numbers table. Round the median to one decimal point.

    - Need to find the median using the numbers frequency. 

*/
WITH data AS (
    -- Decompress table
    SELECT num, frequency
    FROM Numbers
    CONNECT BY PRIOR num = num 
       AND PRIOR dbms_random.value IS NOT NULL
       AND LEVEL <= frequency
    ORDER BY num
)

SELECT ROUND(median(num), 1) AS median FROM data ;
