# Write your MySQL query statement below
WITH a as (
    SELECT *
    FROM Trips
    WHERE Client_id NOT IN (
        SELECT Users_id FROM Users WHERE Banned = 'Yes'
    ) AND Driver_id NOT IN (
        SELECT Users_id FROM Users WHERE Banned = 'Yes'
    )
)

SELECT Request_at as Day, ROUND(AVG(CASE WHEN status = 'completed' THEN 0 ELSE 1 END), 2) AS 'Cancellation Rate'
FROM a
GROUP BY Day
HAVING Day BETWEEN '2013-10-01' AND '2013-10-03' ;