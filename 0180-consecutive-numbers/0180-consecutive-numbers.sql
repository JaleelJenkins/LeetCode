# Write your MySQL query statement below
/*
    Write an SQL query to find all numbers that appear at least three times         consecutively.

    Return the result table in any order.
    
    Resolution: Self-Joins
*/

SELECT DISTINCT a.Num AS ConsecutiveNums FROM Logs a
JOIN Logs b ON a.ID = b.ID + 1 AND a.NUM = b.NUM #ID is one higher a.ID
JOIN Logs c ON a.ID = c.ID + 2 AND a.NUM = c.NUM #ID is two higher than a.ID;
