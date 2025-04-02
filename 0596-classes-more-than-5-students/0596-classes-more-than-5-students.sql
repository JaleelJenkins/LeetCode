/* Write your PL/SQL query statement below */

/* Write a solution to find all the classes that have at least five students. Return the result table in any order.*/

SELECT class
FROM Courses
HAVING COUNT(*) >= 5
GROUP BY class;