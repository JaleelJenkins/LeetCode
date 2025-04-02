# Write your MySQL query statement below
/* Write an SQL query to report the managers with at least five direct reports. Return the result table in any order. */
/* Solution: 
        Steps --
                1. Try to get all the managerIDs that have count bigger than 5.
                    a. Count employee ID's per Manager. Use HAVING for your aggregation of >= 5
                2. Use the result to write an outer query selecting the required output, just the name.
*/

SELECT Name FROM Employee WHERE Id IN 
(SELECT ManagerId FROM Employee GROUP BY ManagerId
HAVING (COUNT(DISTINCT Id)) >= 5)
