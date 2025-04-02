/* Write your PL/SQL query statement below */
SELECT MIN(ABS(p1.x - p2.x)) AS SHORTEST
FROM POINT p1, POINT p2
WHERE p1.x != p2.x
