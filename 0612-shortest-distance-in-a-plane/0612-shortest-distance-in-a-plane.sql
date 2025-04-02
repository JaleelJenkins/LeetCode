/* Write your PL/SQL query statement below */
SELECT ROUND(SQRT(MIN((T1.X-T2.X) * (T1.X-T2.X) + (T1.Y-T2.Y) * (T1.Y-T2.Y))),2) AS SHORTEST
FROM POINT2D T1, POINT2D T2
WHERE (T1.X != T2.X) OR (T1.Y != T2.Y);