# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE description != 'boring'
 AND id % 2
ORDER BY rating DESC