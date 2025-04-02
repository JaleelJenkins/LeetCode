# Write your MySQL query statement below
/* Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday). */
    /* Will need to use a self join to compare to the previous days temp to the current days temp */
    
SELECT w2.id 
FROM Weather w1 JOIN Weather w2 ON DATEDIFF(w1.recordDate, w2.recordDate) = -1 
AND w2.temperature > w1.temperature